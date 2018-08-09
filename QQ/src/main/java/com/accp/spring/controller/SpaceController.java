package com.accp.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.accp.spring.entity.AllSpace;
import com.accp.spring.entity.Dynamicstate;
import com.accp.spring.entity.Img;
import com.accp.spring.entity.Space;

import com.accp.spring.entity.User;

import com.accp.spring.service.DynamicstateService;
import com.accp.spring.service.FriendService;
import com.accp.spring.service.ImgService;

import com.accp.spring.service.SpaceService;

import com.accp.spring.service.UserService;


@Controller

@RequestMapping("/space")
public class SpaceController {

	@Autowired
	public SpaceService spaceService;

	@Autowired
	public ImgService imgService;

	@Autowired
	public DynamicstateService dynamicstateService;

	

	@Autowired
	public FriendService friendService;


	@Autowired
	public UserService usersService;


	// 发说说
	@RequestMapping("/faBiao")
	public String fileUpload(@RequestParam("file") MultipartFile[] file, HttpServletRequest request,
			HttpSession session, String centent, Dynamicstate dynamicstate, Img img) {
		System.err.println("ssss");
		List<User> userList = (List<User>) session.getAttribute("users");
		Space space = this.spaceService.whoSpace(userList.get(0).getUserId());
		// 添加动态
		dynamicstate.setSpaceId(space.getSpaceId());
		dynamicstate.setStateText(centent);
		dynamicstate.setStateTime("NOW()");
		this.dynamicstateService.insertShuo(dynamicstate);
		// 添加动态图片
		img.setImgType(1);
		img.setMasterId(dynamicstate.getStateId());
		System.err.println(file.length);
		if (!file[0].getOriginalFilename().toString().equals("")) {
			for (int i = 0; i < file.length; i++) {
				String filePath = request.getSession().getServletContext().getRealPath("/") + "img/"
						+ file[i].getOriginalFilename();
				System.err.println(filePath.toString());
				try {
					file[i].transferTo(new File(filePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				img.setPath("img/" + file[i].getOriginalFilename().toString());
				this.imgService.shuoImg(img);
			}
		}
		return "redirect:/dontai.jsp";
	}

	

// 所有动态
	@ResponseBody
	@RequestMapping("/allDyn")
	public List<AllSpace> allDynamicdtate(HttpSession session) {
		System.err.println("jjj");
		List<AllSpace> space = new ArrayList<AllSpace>();
		List<User> userList = (List<User>) session.getAttribute("users");

		List<Dynamicstate> dynamicstate = this.dynamicstateService.allDynamicdtate(userList.get(0).getUserId());
		System.err.println(dynamicstate.size()+"--------------");
		for (int i = 0; i < dynamicstate.size(); i++) {
			AllSpace allSpace = new AllSpace();
			// 好友
			System.err.println(userList.get(0).getUserId());
			System.err.println(dynamicstate.get(i).getSpaceId());
			
			List<User> users = this.usersService.findFriend(userList.get(0).getUserId(), dynamicstate.get(i).getSpaceId());
			
			allSpace.setUsers(users);
			// 动态
			allSpace.setDynamicstate(dynamicstate.get(i));
			// 动态图
			List<Img> img = this.imgService.dynamicstateImg(dynamicstate.get(i).getStateId());
			allSpace.setImg(img);
			space.add(allSpace);
		}
		System.err.println(space+"---------------");
		return space;
	}

}
