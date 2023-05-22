package com.dazuizui.bedroom_system.domain;

public class Builder {
    private Long id;
    private String name;
    private Integer maxFloor; //最大楼层
    private String sex;      //所属性别

    @Override
    public String toString() {
        return "Builder{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", maxFloor=" + maxFloor +
                ", sex='" + sex + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMaxFloor() {
        return maxFloor;
    }

    public void setMaxFloor(Integer maxFloor) {
        this.maxFloor = maxFloor;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Builder() {
    }

    public Builder(Long id, String name, Integer maxFloor, String sex) {
        this.id = id;
        this.name = name;
        this.maxFloor = maxFloor;
        this.sex = sex;
    }
}
