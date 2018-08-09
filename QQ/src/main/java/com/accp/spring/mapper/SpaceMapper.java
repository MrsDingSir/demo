package com.accp.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Space;



public interface SpaceMapper {

	int insertSpace(Space space);
	
	Space selectWhoSpace(@Param("userId")int userId);
}
