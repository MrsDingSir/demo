package com.accp.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Grouping;
import com.accp.spring.mapper.GroupingMapper;
@Service
public class GroupingService {
	@Autowired
	private  GroupingMapper groupingMapper;
	
	public int	insert(Grouping grouping) {		
		
		return this.groupingMapper.insert(grouping);
	}
	
	public List<Grouping> selectById(int userId){
		
		return this.groupingMapper.selectById(userId);
	}
	
	public int delete(int userId,int groupingId) {
		
		return this.groupingMapper.delete(userId, groupingId);
	}
	
	public int update(Grouping grouping) {
		
		return this.groupingMapper.update(grouping);
			
	}
	
	public Grouping selectMinId(int userId) {
		return this.groupingMapper.selectMinId(userId);
	}

}
