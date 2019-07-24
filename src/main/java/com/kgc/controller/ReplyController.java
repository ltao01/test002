package com.kgc.controller;

import com.kgc.pojo.Reply;
import com.kgc.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/reply")
public class ReplyController {

    @Autowired
    private ReplyService service;

//    查看笔记
    @RequestMapping("/seeId/{id}")
    public String seeId(@PathVariable Integer id, Model mav){
        System.out.println(id+"+++++++++++++++++++查看id++++++++++++++++++++++");
        List<Reply> replies= service.selectById(id);
       int aa= id;
       mav.addAttribute("aa",aa);
        mav.addAttribute("replies",replies);
        return "see";
    }

    @RequestMapping("/addll")
    public String addll(
            @RequestParam Integer id, Model mav){
        System.out.println("+++++++++++++++++++++++"+id);
        mav.addAttribute("id",id);
        return "add";
    }
    //    新增
    @RequestMapping("/addreply")
    public String addreply(Reply r){
        System.out.println(r.toString()+"----------参数线-----------");
        Integer i= service.addreply(r);

        return "redirect:/inv/search";
    }

//    删除
    @RequestMapping("/deeId")
    public String deeId(Integer id){
        System.out.println(id+"----------参数线-----------");
        Integer i= service.deeId(id);

        return "redirect:/inv/search";
    }
}
