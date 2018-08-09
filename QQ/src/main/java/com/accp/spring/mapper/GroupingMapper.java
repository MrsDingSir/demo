package com.accp.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.accp.spring.entity.Grouping;

public interface GroupingMapper {
		int	insert(Grouping grouping);
		List<Grouping> selectById(@Param("userId")int userId);
		
		int delete(@Param("userId")int userId,@Param("groupingId")int groupingId);
		
		int update(Grouping grouping);
		
		Grouping selectMinId(int userId);
}
