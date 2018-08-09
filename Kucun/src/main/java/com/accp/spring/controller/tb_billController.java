package com.accp.spring.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.accp.spring.entity.tb_bill;
import com.accp.spring.entity.tb_detail;
import com.accp.spring.service.tb_billService;
import com.accp.spring.service.tb_detailService;

@RestController
@RequestMapping("api/bill")
public class tb_billController {
	@Autowired
	private tb_billService billService;
	@Autowired
	private tb_detailService detailService;
	
	
	@RequestMapping(method=RequestMethod.POST)
	public int insert(@RequestBody tb_bill bill) {		
			return this.billService.insert(bill);
	}
	@ResponseBody
	@RequestMapping(value="/add")
	public int insert(@RequestBody tb_detail detail) {	
		System.err.println("jjj");
			System.err.println(detail.getGoodsmoneyamt());
			return this.detailService.insert(detail);
	}
	
	@RequestMapping(value="/All")
	public List<tb_bill> selectAll(){		
		return this.billService.selectAll();

	}
	
	
}
