package com.accp.spring.controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.accp.spring.entity.FriendApply;
import com.accp.spring.entity.Grouping;
import com.accp.spring.entity.Space;
import com.accp.spring.entity.User;
import com.accp.spring.service.FriendApplyService;
import com.accp.spring.service.FriendService;
import com.accp.spring.service.GroupingService;
import com.accp.spring.service.SpaceService;
import com.accp.spring.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private GroupingService groupingService;
	@Autowired
	private FriendService friendService;
	@Autowired
	private FriendApplyService friendApplyService;
	@Autowired
	private SpaceService spaceService;
	
	@RequestMapping("/login")
	public String login() {
		return "/login.html";
	}
	@RequestMapping("/zc")
	public String zc() {
		return "/addUser.html";
	}
	@RequestMapping("/lxr")
	public String lxr(int userId,Model model) {
		System.err.println(userId);
		List<Grouping> grou=this.groupingService.selectById(userId);
		model.addAttribute("grou", grou);
		return "/lxr.jsp";
	}
	
	@RequestMapping("/bjfz")
	public String bjfz(int userId,Model model) {
		System.err.println(userId);
		List<Grouping> grou=this.groupingService.selectById(userId);
		model.addAttribute("grou", grou);
		return "/addfz.jsp";
	}

	@RequestMapping("/addfz")
	public String addfz(Grouping grouping) {
		this.groupingService.insert(grouping);
		return "/User/bjfz";
	}
	@RequestMapping("/scfz")
	public String scfz(int userId,int groupingId) {
		System.err.println(userId);
		System.err.println(groupingId);
		this.groupingService.delete(userId, groupingId);
		this.friendService.update(userId, groupingId);
		return "/User/bjfz";
	}
	
	@RequestMapping("/xgfz")
	public String xgfz(Grouping grouping) {	
		this.groupingService.update(grouping);
		return "/User/bjfz";
	}
	
	@RequestMapping("/addhy")
	public String addhy(int userId,Model model,HttpServletRequest requst) {	
		System.err.println("addhy");
		HttpSession session=requst.getSession();
		List<User> list=(List<User>)session.getAttribute("users");
		List<User> Userlist=this.userService.selectId(userId);
		List<Grouping> groulist=this.groupingService.selectById(list.get(0).getUserId());
		model.addAttribute("Userlist", Userlist);
		model.addAttribute("groulist", groulist);
		return "/addhy.jsp";
	}
	
	@RequestMapping("/szhyfz")
	public String szhyfz(int applyId,int userId,Model model) {	
		System.err.println("szhyfz");
		List<Grouping> groulist=this.groupingService.selectById(userId);
		List<FriendApply> friapp=this.friendApplyService.selectId(applyId);
		model.addAttribute("groulist", groulist);
		System.err.println(groulist);
		model.addAttribute("friapp", friapp);
		return "/szhyfz.jsp";
	}
	
	
	
	
	@RequestMapping("/insertUser")
	public String insertUser(User user,HttpSession session,Space space) {
		user.setCreateTime("NOW()");
		StringBuilder str=new StringBuilder();
		Random random=new Random();
		for (int i = 0; i < 8; i++) {
			str.append(random.nextInt(10));			
		}
		String num=str.toString();
		System.err.println(num);
		user.setUserName(num);
		user.setHeadImg("555aaa206bf0040e3bd89c6412aff12ce1794105.jpg");
		this.userService.insert(user);
		session.setAttribute("user", user);
		//添加空间
		space.setBackColor("red");
		space.setBackImgId(1);
		space.setUserId(user.getUserId());
		this.spaceService.initSpace(space);
		
		return "/zccg.jsp";
	}
	
	@RequestMapping("/doLogin")
	public String doLogin(String userName,String password,HttpSession session) {
		if(userName!=""||password!="") {
			System.err.println(userName);
			List<User> users=this.userService.select(userName, password);
			List<Grouping> grou=this.groupingService.selectById(users.get(0).getUserId());
			Grouping grouping=new Grouping();
			grouping.setGroupingName("我的好友");
			grouping.setUserId(users.get(0).getUserId());
			if(grou.size()==0) {
				this.groupingService.insert(grouping);
			}
			session.setAttribute("users", users);
		}
		return "/index.jsp";
	}
	
	
	
	


}
