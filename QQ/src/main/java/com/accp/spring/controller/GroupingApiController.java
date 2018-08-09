package com.accp.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.accp.spring.entity.Grouping;
import com.accp.spring.service.GroupingService;

@RestController
@RequestMapping("api/grouping")
public class GroupingApiController {
	@Autowired
	private GroupingService groupingService;
	@RequestMapping("/{userId}")
	public List<Grouping> selectById(@PathVariable int userId){
		return this.groupingService.selectById(userId);
	}

}
