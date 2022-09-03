package com.yc.s2plyqnzf.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.yc.s2plyqnzf.entity.Street;
import com.yc.s2plyqnzf.mapper.StreetMapper;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

/**
 * <p>
 * 青鸟租房-街道表-1003 前端控制器
 * </p>
 *
 * @author yc
 * @since 2022-09-03
 */
@Controller
@RequestMapping("/s2plyqnzf/street")
public class StreetController {

    @Resource
    private StreetMapper streetMapper;

    public List<Street> queryByDid(int did){
        LambdaQueryWrapper<Street> lqw = new LambdaQueryWrapper<>();
        lqw.eq(Street::getId, did);
    }

}

