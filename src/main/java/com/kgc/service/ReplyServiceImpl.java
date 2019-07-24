package com.kgc.service;

import com.kgc.mapper.ReplyMapper;
import com.kgc.pojo.Reply;
import com.kgc.pojo.ReplyExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    private ReplyMapper mapper;


    @Override
    public List<Reply> selectById(Integer id) {
        ReplyExample e = new ReplyExample();
        ReplyExample.Criteria c = e.createCriteria();
        c.andInvidEqualTo(id);
        return mapper.selectByExample(e);
    }

    @Override
    public Integer addreply(Reply r) {
        return mapper.insertSelective(r);
    }

    @Override
    public Integer deeId(Integer id) {
        ReplyExample e = new ReplyExample();
        ReplyExample.Criteria c = e.createCriteria();
        c.andInvidEqualTo(id);
        return mapper.deleteByExample(e);
    }


}
