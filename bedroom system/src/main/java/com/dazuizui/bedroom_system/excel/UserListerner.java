package com.dazuizui.bedroom_system.excel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.dazuizui.bedroom_system.domain.Bed;
import com.dazuizui.bedroom_system.domain.User;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
@Scope("prototype")
public class UserListerner extends AnalysisEventListener<User> {

    public List<User> list = new ArrayList<>();

    @Override
    public void invoke(User bed, AnalysisContext analysisContext) {
        list.add(bed);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }

    public List<User> get(){
        return this.list;
    }

    public void clear(){
        this.list.clear();
    }
}
