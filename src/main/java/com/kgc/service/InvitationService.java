package com.kgc.service;

import com.github.pagehelper.PageInfo;
import com.kgc.pojo.Invitation;

public interface InvitationService {
    PageInfo<Invitation> selectInvitation(Invitation s, Integer pageNum);

    int adddate(Invitation s);
}
