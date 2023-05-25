package com.dazuizui.bedroom_system.domain.vo;

import com.dazuizui.bedroom_system.domain.User;

import java.io.Serializable;
import java.util.List;

public class GetPaginationInfoVo implements Serializable {
    private List<User> list;
    private Long count;

    @Override
    public String toString() {
        return "GetPaginationInfoVo{" +
                "list=" + list +
                ", count=" + count +
                '}';
    }

    public List<User> getList() {
        return list;
    }

    public void setList(List<User> list) {
        this.list = list;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public GetPaginationInfoVo() {
    }

    public GetPaginationInfoVo(List<User> list, Long count) {
        this.list = list;
        this.count = count;
    }
}
