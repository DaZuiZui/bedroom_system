package com.dazuizui.bedroom_system.domain.bo;

import java.io.Serializable;

public class GetNotOptionalBedBo implements Serializable {
    private String token;
    private String roomId;
    private String builderName;
    private Integer floor;
    private Long   bedId;

    @Override
    public String toString() {
        return "GetNotOptionalBedBo{" +
                "token='" + token + '\'' +
                ", roomId='" + roomId + '\'' +
                ", builderName='" + builderName + '\'' +
                ", floor=" + floor +
                ", bedId=" + bedId +
                '}';
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getBuilderName() {
        return builderName;
    }

    public void setBuilderName(String builderName) {
        this.builderName = builderName;
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

    public GetNotOptionalBedBo() {
    }

    public GetNotOptionalBedBo(String token, String roomId, String builderName, Integer floor, Long bedId) {
        this.token = token;
        this.roomId = roomId;
        this.builderName = builderName;
        this.floor = floor;
        this.bedId = bedId;
    }
}
