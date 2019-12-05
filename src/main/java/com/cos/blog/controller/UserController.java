package com.cos.blog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.blog.model.User;
import com.cos.blog.repository.UserRepository;
import com.cos.blog.utils.Script;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/user/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@PostMapping("/user/join")
	public String join(User user) {
		userRepository.save(user);
		return "user/loginForm";
	}
	
	@GetMapping("/user/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@PostMapping("/user/login")
	public @ResponseBody String userLogin(User user, HttpSession session) {
		System.out.println("username :" + user.getUsername());
		System.out.println("password :" + user.getPassword());
		User u = userRepository.findByUsernameAndPassword(user);
		if(u != null) {
			session.setAttribute("user", u);
			return Script.href("/home");
		} else {
			return Script.back("login fail : 로그인 실패");			
		}
	}
	
	@GetMapping("/user/logout")
	public @ResponseBody String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}
	
	@GetMapping("/user/profileForm")
	public String profileForm() {
		return "user/profileForm";
	}
}
