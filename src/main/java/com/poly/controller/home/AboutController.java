package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class AboutController {
	@RequestMapping("about")
	public String error() throws InterruptedException {
		Thread.sleep(100);
		return "home/404";
	}
}
