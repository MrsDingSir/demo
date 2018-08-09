package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.FriendApply;

public interface FriendApplyMapper {
	int insert(FriendApply friendApply);
	
	List<FriendApply> selectById(int pasvuserId);
	
	int update(@Param("isOk") int isOk,@Param("applyId") int applyId);

	List<FriendApply> selectId(@Param("applyId")int applyId);
}
