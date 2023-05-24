package com.dazuizui.bedroom_system.domain.bo;

import java.io.Serializable;

public class ChooseBedBo implements Serializable {
    private String token;
    private String buildername;
    private String roomId;
    private Integer floor;
    private Integer bendId;

    @Override
    public String toString() {
        return "ChooseBedBo{" +
                "token='" + token + '\'' +
                ", buildername='" + buildername + '\'' +
                ", roomId='" + roomId + '\'' +
                ", floor=" + floor +
                ", bendId=" + bendId +
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

    public ChooseBedBo() {
    }

    public ChooseBedBo(String token, String buildername, String roomId, Integer floor, Integer bendId) {
        this.token = token;
        this.buildername = buildername;
        this.roomId = roomId;
        this.floor = floor;
        this.bendId = bendId;
    }
}
