package com.dazuizui.bedroom_system.domain.bo;

import java.io.Serializable;

public class ChooseBedBo implements Serializable {
    private String token;
    private String builderName;
    private String roomId;
    private Integer floor;

    private Long bedId;
    private Long userId;

    @Override
    public String toString() {
        return "ChooseBedBo{" +
                "token='" + token + '\'' +
                ", builderName='" + builderName + '\'' +
                ", roomId='" + roomId + '\'' +
                ", floor=" + floor +
                ", bedId=" + bedId +
                ", userId=" + userId +
                '}';
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getBuilderName() {
        return builderName;
    }

    public void setBuilderName(String builderName) {
        this.builderName = builderName;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public Long getBedId() {
        return bedId;
    }

    public void setBedId(Long bedId) {
        this.bedId = bedId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public ChooseBedBo() {
    }

    public ChooseBedBo(String token, String builderName, String roomId, Integer floor, Long bedId, Long userId) {
        this.token = token;
        this.builderName = builderName;
        this.roomId = roomId;
        this.floor = floor;
        this.bedId = bedId;
        this.userId = userId;
    }
}
