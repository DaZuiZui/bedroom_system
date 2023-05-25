package com.dazuizui.bedroom_system.excel;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.dazuizui.bedroom_system.domain.Bed;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;


public class BedListerner extends AnalysisEventListener<Bed> {


    public List<Bed> list = new ArrayList<>();

    @Override
    public void invoke(Bed bed, AnalysisContext analysisContext) {
        list.add(bed);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {

    }

    public List<Bed> get(){
        return this.list;
    }

    public void clear(){
        this.list.clear();
    }

}
