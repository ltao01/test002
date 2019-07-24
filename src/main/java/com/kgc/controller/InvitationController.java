package com.kgc.controller;

import com.github.pagehelper.PageInfo;
import com.kgc.pojo.Invitation;
import com.kgc.service.InvitationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/inv")
public class InvitationController {

    @Autowired
    private InvitationService service;

    //    查询数据页面展示
    @RequestMapping("/search")
    public String selectAll(Invitation s,
                            @RequestParam(defaultValue = "1") Integer pageNum, Model mav){
        System.out.println(s.getTitle()+"--------------------所有数据展示接收数据检测线-----------------------");
        PageInfo<Invitation> pageInfo = service.selectInvitation(s, pageNum);//模糊查询
        mav.addAttribute("pageInfo",pageInfo);
        return "show";
    }

    @RequestMapping("/add")
    public String add(Model mav){
        return "addinvt";
    }
    @RequestMapping("/adddate")
    public String adddate(Invitation s){
       int i= service.adddate(s);
        if (i == 1) {
            return "redirect:/inv/search";
        }
        return null;
    }
}
