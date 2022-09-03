package com.yc.s2plyqnzf;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.yc.s2plyqnzf.mapper")
public class S2PlyQnzfApplication {

    public static void main(String[] args) {
        SpringApplication.run(S2PlyQnzfApplication.class, args);
    }

}
