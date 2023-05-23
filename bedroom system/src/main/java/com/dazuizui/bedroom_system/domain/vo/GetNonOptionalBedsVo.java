package com.dazuizui.bedroom_system.domain.vo;

import com.dazuizui.bedroom_system.domain.BedInfo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class GetNonOptionalBedsVo implements Serializable {

    private List<BedInfo> nonOptionalBeds;


    private Boolean status;


    @Override
    public String toString() {
        return "GetNonOptionalBedsVo{" +
                "nonOptionalBeds=" + nonOptionalBeds +
                ", status=" + status +
                '}';
    }

    public List<BedInfo> getNonOptionalBeds() {
        return nonOptionalBeds;
    }

    public void setNonOptionalBeds(List<BedInfo> nonOptionalBeds) {
        this.nonOptionalBeds = nonOptionalBeds;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public GetNonOptionalBedsVo() {
    }

    public GetNonOptionalBedsVo(List<BedInfo> nonOptionalBeds, Boolean status) {
        this.nonOptionalBeds = nonOptionalBeds;
        this.status = status;
    }
}
