package com.accp.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.accp.spring.entity.User;
import com.accp.spring.service.UserService;

@RestController
@RequestMapping("api/user")
public class UserApiController {
	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping(value="/sshy",method=RequestMethod.GET)
	public List<User> selectById(String nickName,int userId){
		System.err.println("sshy");
		return this.userService.selectById(nickName, userId);
	}
	
	@ResponseBody
	@RequestMapping(value="/selectId",method=RequestMethod.GET)
	public List<User> selectId(@PathVariable int userId){
		System.err.println("id");
		return this.userService.selectId(userId);
	}

}
