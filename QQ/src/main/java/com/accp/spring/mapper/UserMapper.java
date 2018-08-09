package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.User;


public interface UserMapper {
		int insert(User user);
		List<User> select(@Param("userName")String userName,@Param("password")String password);
		
		List<User> selectById(@Param("nickName")String nickName,@Param("userId")int userId);
		
		List<User> selectId(@Param("userId")int userId);
		
		List<User> findFriend(@Param("userId")int userId,@Param("spaceId")int spaceId);
}
