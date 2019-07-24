package com.kgc.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.mapper.InvitationMapper;
import com.kgc.mapper.ReplyMapper;
import com.kgc.pojo.Invitation;
import com.kgc.pojo.InvitationExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InvitationServiceImpl implements InvitationService {

    @Autowired
    private InvitationMapper mapper;

    @Autowired
    private ReplyMapper replyMapper;

    @Override
    public PageInfo<Invitation> selectInvitation(Invitation s, Integer pageNum) {
        PageHelper.startPage(pageNum,4);
        InvitationExample e = new InvitationExample();
        InvitationExample.Criteria c = e.createCriteria();
        if (s.getTitle()!=null&&s.getTitle()!=""){

        c.andTitleLike("%"+s.getTitle()+"%");
        }

        return new PageInfo<Invitation>(mapper.selectByExample(e));
    }

    @Override
    public int adddate(Invitation s) {

        return mapper.insertSelective(s);
    }
}
