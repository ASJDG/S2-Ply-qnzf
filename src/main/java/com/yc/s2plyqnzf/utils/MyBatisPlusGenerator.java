package com.yc.s2plyqnzf.utils;

import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;

import java.util.Collections;

public class MyBatisPlusGenerator {
    public static void main(String[] args) {
        FastAutoGenerator.create("jdbc:mysql://127.0.0.1/S2-Ply-qnzf", "root", "a")
                .globalConfig(builder -> {
                    builder.author("yc") // 设置作者
                            //.enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir("E:\\0903"); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.yc") // 设置父包名
                            .moduleName("s2plyqnzf") // 设置父包模块名
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml, "E:\\0903")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder//.addInclude("t_simple") // 设置需要生成的表名
                            .addTablePrefix("qnzf_"); // 设置过滤表前缀
                })
                //.templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();
    }
}
