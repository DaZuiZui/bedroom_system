package com.dazuizui.bedroom_system.domain.bo;

import java.io.Serializable;

public class GetPaginationInfoBo implements Serializable {
    private Long start;
    private Long number;
    private String token;

    @Override
    public String toString() {
        return "GetPaginationInfoBo{" +
                "start=" + start +
                ", number=" + number +
                ", token='" + token + '\'' +
                '}';
    }

    public Long getStart() {
        return start;
    }

    public void setStart(Long start) {
        this.start = start;
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public GetPaginationInfoBo() {
    }

    public GetPaginationInfoBo(Long start, Long number, String token) {
        this.start = start;
        this.number = number;
        this.token = token;
    }
}
