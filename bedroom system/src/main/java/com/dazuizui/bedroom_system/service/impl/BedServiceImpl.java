package com.dazuizui.bedroom_system.service.impl;

import com.alibaba.excel.EasyExcel;
import com.alibaba.fastjson2.JSONArray;
import com.dazuizui.bedroom_system.domain.*;
import com.dazuizui.bedroom_system.domain.bo.ChooseBedBo;
import com.dazuizui.bedroom_system.domain.bo.GetNotOptionalBedBo;
import com.dazuizui.bedroom_system.domain.vo.GetNonOptionalBedsVo;
import com.dazuizui.bedroom_system.domain.vo.ResponseVo;
import com.dazuizui.bedroom_system.excel.BedListerner;
import com.dazuizui.bedroom_system.mapper.BedMapper;
import com.dazuizui.bedroom_system.mapper.UserMapper;
import com.dazuizui.bedroom_system.service.BedService;
import com.dazuizui.bedroom_system.util.JwtUtil;
import com.dazuizui.bedroom_system.util.TransactionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.multipart.MultipartFile;

import java.awt.*;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BedServiceImpl implements BedService {

    @Autowired
    private BedMapper bedMapper;
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private TransactionUtils transactionUtils;

    @Override
    public String readExcel(MultipartFile file) throws IOException {
        BedListerner bedListerner = new BedListerner();
        EasyExcel.read(file.getInputStream(),Bed.class,bedListerner).sheet().doRead();
        //获取数据
        List<Bed> list = bedListerner.list;
        //写入数据库
        Long aLong = bedMapper.insertBed(list);
        return null;
    }

    @Override
    public String getNonOptionalBeds(GetNotOptionalBedBo bedBo) {
        bedBo.setBuilderName(URLDecoder.decode(bedBo.getBuilderName()));
        //查看该生是否有选床资格
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(bedBo.getToken());
        } catch (Exception e) {
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        String useridstr = (String) analysis.get("id");
        Long id = Long.valueOf(useridstr);
        User byId = userMapper.findById(id);
        bedBo.setUserId(id);
        //获取已经被选的床位
        List<Bed> nonOptionalBeds = bedMapper.getNonOptionalBeds(bedBo);
        System.err.println(byId);
        Boolean b = byId.getStatus() == 0 ? Boolean.FALSE : Boolean.TRUE;
        GetNonOptionalBedsVo getNonOptionalBedsVo = new GetNonOptionalBedsVo();
        getNonOptionalBedsVo.setNonOptionalBeds(nonOptionalBeds);
        getNonOptionalBedsVo.setStatus(b);


        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,getNonOptionalBedsVo, StatusCode.OK));
    }

    /**
     * 选择床位
     * @param chooseBedBo
     * @return
     */
    @Override
    public String chooseBed(ChooseBedBo chooseBedBo) {
        //URL编码解析
        chooseBedBo.setBuilderName(URLDecoder.decode(chooseBedBo.getBuilderName()));
        //获取学生数据
        Map<String, Object> analysis = null;
        try {
            analysis = JwtUtil.analysis(chooseBedBo.getToken());
        } catch (Exception e) {
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AuthenticationExpired,null, StatusCode.AuthenticationExpired));
        }
        //获取user info
        String useridstr = (String) analysis.get("id");
        Long id = Long.valueOf(useridstr);
        User byId = userMapper.findById(id);
        chooseBedBo.setUserId(byId.getId());
        //查看是否缴费
        if (byId.getStatus() == 0){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Unpaid,null, StatusCode.Unpaid));
        }

        //查看是否已经选了床
        BedInfo bedInfoById = bedMapper.findBedInfoById(id);
        if (bedInfoById != null){
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.AlreadySelectedBed,null, StatusCode.AlreadySelectedBed));
        }

        //进行选择
        System.out.println(transactionUtils);
        TransactionStatus begin = transactionUtils.begin(TransactionDefinition.ISOLATION_READ_COMMITTED);

        //悲关锁获取床位
        Bed bed = bedMapper.findById(chooseBedBo.getBedId());
        try {
            if (bed.getStatus() == 0){
                //修改床位状态
                Long numberOfOptions = bedMapper.updateStatusById(1, chooseBedBo.getBedId());
                if (numberOfOptions == 0){
                    transactionUtils.rollback(begin);
                    return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Error,null, StatusCode.Error));
                }
                //添加床位信息
                numberOfOptions = bedMapper.insertBedInfo(chooseBedBo);
                if (numberOfOptions == 0){
                    transactionUtils.rollback(begin);
                    return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Error,null, StatusCode.Error));
                }
            }else{
                transactionUtils.rollback(begin);
                return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.HasBeenChosenByOthers,null, StatusCode.HasBeenChosenByOthers));
            }
        } catch (Exception e) {
            e.printStackTrace();
            transactionUtils.rollback(begin);
            return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.Error,null, StatusCode.Error));
        }
        transactionUtils.commit(begin);
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,null, StatusCode.OK));
    }

    @Override
    public String checkBed( GetNotOptionalBedBo getNotOptionalBedBo) {
        List<BedInfo> bedInfos = bedMapper.checkBed(getNotOptionalBedBo);
        System.err.println(bedInfos);
        return JSONArray.toJSONString(new ResponseVo<>(StatusCodeMessage.OK,bedInfos, StatusCode.OK));
    }


}
