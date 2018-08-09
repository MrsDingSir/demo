package com.accp.spring.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.User;
import com.accp.spring.mapper.UserMapper;


@Service
public class UserService  {
	@Autowired
	private UserMapper userMapper;
	public int insert(User user) {
		return this.userMapper.insert(user);
	}
	public List<User> select(String userName,String password) {
		return this.userMapper.select(userName, password);
	}
	
	public List<User> selectById(String nickName,int userId){
		return this.userMapper.selectById(nickName, userId);
	}
	
	public List<User> selectId(int userId){
		return this.userMapper.selectId(userId);
	}
	
	//ÎÒµÄºÃÓÑ
		public List<User> findFriend(int userId,int spaceId){
			return this.userMapper.findFriend(userId,spaceId);
		} 

}
