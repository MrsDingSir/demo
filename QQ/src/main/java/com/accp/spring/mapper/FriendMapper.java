package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Friend;

public interface FriendMapper {
		int insert(Friend friend);
		
		List<Friend> selectById(int groupingId);
		
		int update(@Param("userId")int userId,@Param("groupingId") int groupingId);
		
}
