package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Dynamicstate;

public interface DynamicstateMapper {

	int insertShuo(Dynamicstate dynamicstate);
	
	
	List<Dynamicstate> AllDynamicsate(@Param("userId")int userId,@Param("myUserId")int myUserId);
}
