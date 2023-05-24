package com.dazuizui.bedroom_system.domain.bo;

import java.io.Serializable;

public class ChooseBedBo implements Serializable {
    private String token;
    private String buildername;
    private String roomId;
    private Integer floor;
    private Integer bendId;
    private Long bedId;
    private Long userId;

    @Override
    public String toString() {
        return "ChooseBedBo{" +
                "token='" + token + '\'' +
                ", buildername='" + buildername + '\'' +
                ", roomId='" + roomId + '\'' +
                ", floor=" + floor +
                ", bendId=" + bendId +
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

    public String getBuildername() {
        return buildername;
    }

    public void setBuildername(String buildername) {
        this.buildername = buildername;
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

    public Integer getBendId() {
        return bendId;
    }

    public void setBendId(Integer bendId) {
        this.bendId = bendId;
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

    public ChooseBedBo(String token, String buildername, String roomId, Integer floor, Integer bendId, Long bedId, Long userId) {

        this.token = token;
        this.buildername = buildername;
        this.roomId = roomId;
        this.floor = floor;
        this.bendId = bendId;
        this.bedId = bedId;
        this.userId = userId;
    }
}
