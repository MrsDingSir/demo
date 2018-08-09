package com.accp.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.accp.spring.entity.Friend;
import com.accp.spring.entity.FriendApply;
import com.accp.spring.entity.User;
import com.accp.spring.service.FriendApplyService;
import com.accp.spring.service.FriendService;

@RestController
@RequestMapping("api/friendApp")
public class FriendApplyApiController {
	@Autowired
	private FriendApplyService friendApplyService;
	@Autowired
	private FriendService friendService;
	@RequestMapping(method=RequestMethod.POST)
	public int insert(@RequestBody FriendApply friendApply,HttpServletRequest request) {
		friendApply.setIsOk(0);
		friendApply.setApplyTime("NOW()");
		HttpSession session=request.getSession();
		List<User> list=(List<User>)session.getAttribute("users");
		friendApply.setApplyuserId(list.get(0).getUserId());
		return this.friendApplyService.insert(friendApply);		
	}
	
	@ResponseBody
	@RequestMapping("/hytz")
	public List<FriendApply> selectById(int pasvuserId,HttpSession session){
		System.err.println("hytz");		
		return this.friendApplyService.selectById(pasvuserId);			
	} 
	
	@ResponseBody
	@RequestMapping("/gbzt")
	public int update(int isOk,int applyId){
		System.err.println("gbzt");
		if(isOk==1) {
			List<FriendApply> friList=this.friendApplyService.selectId(applyId);
			Friend friend=new Friend();
			friend.setFriendName(friList.get(0).getPasvuserName());
			friend.setUserId(friList.get(0).getPasvuserId());
			friend.setGroupingId(friList.get(0).getGroupingId());
			friend.setAddTime("NOW()");
			friend.setFrienduserId(friList.get(0).getApplyuserId());
			this.friendService.insert(friend);
			
		}
		return this.friendApplyService.update(isOk, applyId);			
	} 
	
	
	
}


