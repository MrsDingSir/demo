package com.accp.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.accp.spring.entity.Space;
import com.accp.spring.mapper.SpaceMapper;



@Service
public class SpaceService {

	@Autowired
	public SpaceMapper spaceMapper;
	
	public int initSpace(Space space) {
		
		return this.spaceMapper.insertSpace(space);
	}
	
	
	public Space whoSpace(int userId) {
		return this.spaceMapper.selectWhoSpace(userId);
	}
}
