package com.dazuizui.bedroom_system.domain;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private Long id;
    @ColumnWidth(25)
    @ExcelProperty("身份证")
    private String username;
    @ColumnWidth(25)
    @ExcelProperty("密码")
    private String password;
    private Integer role;
    @ColumnWidth(25)
    @ExcelProperty("专业")
    private String mojar;
    @ColumnWidth(25)
    @ExcelProperty("学院")
    private String college;
    @ColumnWidth(25)
    @ExcelProperty("班级")
    private String classId;
    @ColumnWidth(25)
    @ExcelProperty("年级")
    private Integer grade;
    @ColumnWidth(25)
    @ExcelProperty("负责人")
    private String principal;
    private Long createBy;
    private Date createTime;
    private Long updateBy;
    private Date updateTime;
    private Integer status;
    @ColumnWidth(25)
    @ExcelProperty("性别")
    private String sex;
    @ColumnWidth(25)
    @ExcelProperty("名字")
    private String name;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", mojar='" + mojar + '\'' +
                ", college='" + college + '\'' +
                ", classId='" + classId + '\'' +
                ", grade=" + grade +
                ", principal='" + principal + '\'' +
                ", createBy=" + createBy +
                ", createTime=" + createTime +
                ", updateBy=" + updateBy +
                ", updateTime=" + updateTime +
                ", status=" + status +
                ", sex='" + sex + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public String getMojar() {
        return mojar;
    }

    public void setMojar(String mojar) {
        this.mojar = mojar;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public Long getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Long getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(Long updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User() {
    }

    public User(Long id, String username, String password, Integer role, String mojar, String college, String classId, Integer grade, String principal, Long createBy, Date createTime, Long updateBy, Date updateTime, Integer status, String sex, String name) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.mojar = mojar;
        this.college = college;
        this.classId = classId;
        this.grade = grade;
        this.principal = principal;
        this.createBy = createBy;
        this.createTime = createTime;
        this.updateBy = updateBy;
        this.updateTime = updateTime;
        this.status = status;
        this.sex = sex;
        this.name = name;
    }
}
