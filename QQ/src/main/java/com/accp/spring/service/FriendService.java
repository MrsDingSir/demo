package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Friend;
import com.accp.spring.mapper.FriendMapper;



@Service
public class FriendService {
	@Autowired
	private FriendMapper friendMapper;
	public int insert(Friend friend) {
		return this.friendMapper.insert(friend);
		
	}
	
	public List<Friend> selectById(int groupingId){
		return this.friendMapper.selectById(groupingId);
				
	}
	
	public int update(int userId,int groupingId) {
		
		return this.friendMapper.update(userId, groupingId);
				
	}
	
}
