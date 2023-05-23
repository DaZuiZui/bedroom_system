package com.dazuizui.bedroom_system.domain;

import java.io.Serializable;

public class BedInfo implements Serializable {
    private Long id;
    private String roomId;
    private String biulderName;
    private Integer bedId;
    private Long userId;
    private String name;

    @Override
    public String toString() {
        return "BedInfo{" +
                "id=" + id +
                ", roomId='" + roomId + '\'' +
                ", biulderName='" + biulderName + '\'' +
                ", bedId=" + bedId +
                ", userId=" + userId +
                ", name='" + name + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getBiulderName() {
        return biulderName;
    }

    public void setBiulderName(String biulderName) {
        this.biulderName = biulderName;
    }

    public Integer getBedId() {
        return bedId;
    }

    public void setBedId(Integer bedId) {
        this.bedId = bedId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BedInfo() {
    }

    public BedInfo(Long id, String roomId, String biulderName, Integer bedId, Long userId, String name) {
        this.id = id;
        this.roomId = roomId;
        this.biulderName = biulderName;
        this.bedId = bedId;
        this.userId = userId;
        this.name = name;
    }
}
