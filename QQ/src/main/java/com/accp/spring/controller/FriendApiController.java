package com.accp.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.accp.spring.entity.Friend;
import com.accp.spring.entity.FriendApply;
import com.accp.spring.service.FriendApplyService;
import com.accp.spring.service.FriendService;

@RestController
@RequestMapping("api/friend")
public class FriendApiController {
	@Autowired
	private FriendService friendService;
	@Autowired
	private FriendApplyService friendApplyService;
	@ResponseBody
	@RequestMapping("/xshy")
	public List<Friend> selectById(int groupingId){
		return this.friendService.selectById(groupingId);
	}
	
	@ResponseBody
	@RequestMapping("/szhyfz")
	public int insert(int applyId,String friendName,int groupingId){
		List<FriendApply> friList=this.friendApplyService.selectId(applyId);
		Friend friend=new Friend();
		friend.setFriendName(friList.get(0).getPasvuserName());
		friend.setUserId(friList.get(0).getPasvuserId());
		friend.setGroupingId(friList.get(0).getGroupingId());
		friend.setAddTime("NOW()");
		friend.setFrienduserId(friList.get(0).getApplyuserId());
	
		Friend friend1=new Friend();
		friend1.setFriendName(friendName);
		friend1.setUserId(friList.get(0).getPasvuserId());
		friend1.setGroupingId(groupingId);
		friend1.setAddTime("NOW()");
		friend1.setFrienduserId(friList.get(0).getApplyuserId());
		
		this.friendService.insert(friend);
		this.friendService.insert(friend1);
		
		return this.friendApplyService.update(1, applyId);
	}
	

}
