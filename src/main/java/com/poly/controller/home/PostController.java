package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("home")
public class PostController {

	@RequestMapping("post")
	public String index () {
		return "home/post";
	}
}