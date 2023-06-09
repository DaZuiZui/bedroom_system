package com.dazuizui.bedroom_system;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONWriter;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BedroomSystemApplicationTests {

    @Test
    void contextLoads() {
        @Data
        @AllArgsConstructor
        class A {
            String a;
        }

        @Data
        @AllArgsConstructor
        class B {
            A a;
            A refA;
        }

        A a = new A("a");
        B b = new B(a, a);

        String jsonStr = JSON.toJSONString(b, JSONWriter.Feature.ReferenceDetection);
        System.out.println("序列化：\n" + jsonStr);
        B parsed = JSON.parseObject(jsonStr, B.class);
        System.out.println("反序列化：\n" + parsed);
    }

}
