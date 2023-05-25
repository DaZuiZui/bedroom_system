package com.dazuizui.bedroom_system.excel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.dazuizui.bedroom_system.domain.User;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


public class UserListerner extends AnalysisEventListener<User> {
    public List<User> list = new ArrayList<>();
    @Override
    public void invoke(User excelStudentDTO, AnalysisContext analysisContext) {
        list.add(excelStudentDTO);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        System.out.println("读取完毕");
    }
    public  List<User> get (){
        return this.list;
    }
}