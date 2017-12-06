package com.lele.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lele.pojo.User;
import com.lele.pojo.UserVo;
import com.lele.pojo.pagebean;
import com.lele.service.UserService;

/**
 错误经不起失败，但是真理却不怕失败。
 @author乐乐
 @2017年12月1日@上午10:34:46
 */
@Controller
public class UserController {
   
	@Autowired
	private UserService userService;
	
	
	
	@RequestMapping("/updateUser.do")
	@ResponseBody
	public int updateUser(User user){
		userService.updateUser(user);
		return 0;
	} 
	
	@RequestMapping("/removeUser.do")
	@ResponseBody
	public int removeUser(UserVo user){
		userService.removeUser(user);
		return 0;
	}
	
	@ResponseBody
	@RequestMapping("/savauser.do")
	public int saveUser(User user){
		System.out.println(user);
		userService.saveUser(user);
		return 0;
	}
	
	@RequestMapping("/getAllUser.do")
	@ResponseBody
	public List<User> getAllUser(HttpServletResponse response,int page,int rows){
		pagebean p=new pagebean();
		p.setPagenum((page-1)*rows);
		p.setPagesize(rows);
		
		List<User> user=userService.getAllUser(p);
		
		return user;

	}
	
	
	@RequestMapping("login.do")
	public String Login(){
		return "login";
	}
	
	/*
	 * 
	  你的孤独，虽败犹荣。
	 @author乐乐
	 @2017年12月1日@下午6:51:44
	 */
	@RequestMapping("/center.do")
	public String Center(){
		return "center";
	}
	@RequestMapping("/dategrid.do")
	public String dategrid(){
		return "dategrid";
	}
	
	@RequestMapping("/userlogin.do")
	@ResponseBody
	public int userlogin(HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username.equals("lele")&&password.equals("123")){
			return 1;
		}
		return 0;
	}
	
}
