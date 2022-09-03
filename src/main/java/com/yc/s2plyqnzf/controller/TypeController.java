package com.yc.s2plyqnzf.controller;


import com.yc.s2plyqnzf.entity.Type;
import com.yc.s2plyqnzf.mapper.TypeMapper;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 * 青鸟租房-类别表-1008 前端控制器
 * </p>
 *
 * @author yc
 * @since 2022-09-03
 */
@Controller
@RequestMapping("/s2plyqnzf/type")
public class TypeController {

    @Resource
    private TypeMapper typeMapper;

    @RequestMapping("queryAll")
    public List<Type> queryAll(){
        return typeMapper.selectList(null);
    }
}

