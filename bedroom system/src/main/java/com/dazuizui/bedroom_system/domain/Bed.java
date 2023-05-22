package com.dazuizui.bedroom_system.domain;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;

import java.io.Serializable;

/**
 * 床实体
 */
public class Bed implements Serializable {
    @ColumnWidth(25)
    @ExcelProperty("主键")
    private Long id;
    @ColumnWidth(25)
    @ExcelProperty("床号")
    private Integer bedId;
    @ColumnWidth(25)
    @ExcelProperty("房间号")
    private String roomId;
    @ColumnWidth(25)
    @ExcelProperty("楼层")
    private Integer floorId;
    @ColumnWidth(25)
    @ExcelProperty("公寓楼名字")
    private String builderName;
    @ColumnWidth(25)
    @ExcelProperty("所属类别")
    private String sex;
    @ColumnWidth(25)
    @ExcelProperty("负责人")
    private String principal;
    @ColumnWidth(25)
    @ExcelProperty("负责人电话")
    private String phone;
    @ColumnWidth(25)
    @ExcelProperty("状态")
    private Integer status;

    @Override
    public String toString() {
        return "Bed{" +
                "id=" + id +
                ", bedId=" + bedId +
                ", roomId='" + roomId + '\'' +
                ", floorId=" + floorId +
                ", builderName='" + builderName + '\'' +
                ", sex='" + sex + '\'' +
                ", principal='" + principal + '\'' +
                ", phone='" + phone + '\'' +
                ", status=" + status +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getBedId() {
        return bedId;
    }

    public void setBedId(Integer bedId) {
        this.bedId = bedId;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public Integer getFloorId() {
        return floorId;
    }

    public void setFloorId(Integer floorId) {
        this.floorId = floorId;
    }

    public String getBuilderName() {
        return builderName;
    }

    public void setBuilderName(String builderName) {
        this.builderName = builderName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Bed() {
    }

    public Bed(Long id, Integer bedId, String roomId, Integer floorId, String builderName, String sex, String principal, String phone, Integer status) {
        this.id = id;
        this.bedId = bedId;
        this.roomId = roomId;
        this.floorId = floorId;
        this.builderName = builderName;
        this.sex = sex;
        this.principal = principal;
        this.phone = phone;
        this.status = status;
    }
}
