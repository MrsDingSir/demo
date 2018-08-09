package com.accp.spring.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.FriendApply;
import com.accp.spring.mapper.FriendApplyMapper;

@Service
public class FriendApplyService {
	@Autowired
	private FriendApplyMapper friendApplyMapper;
	public int insert(FriendApply friendApply) {
		return this.friendApplyMapper.insert(friendApply);
	}
	
	public List<FriendApply> selectById(int pasvuserId){
		return this.friendApplyMapper.selectById(pasvuserId);
	}
	
	public int update(int isOk,int applyId) {
		return this.friendApplyMapper.update(isOk, applyId);
	}
	
	public List<FriendApply> selectId(int applyId){
		return this.friendApplyMapper.selectId(applyId);
	}
	

}
