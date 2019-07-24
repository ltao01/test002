package com.kgc.service;

import com.kgc.pojo.Reply;

import java.util.List;

public interface ReplyService {


    List<Reply> selectById(Integer id);

    Integer addreply(Reply r);

    Integer deeId(Integer id);
}
