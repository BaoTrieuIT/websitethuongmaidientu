package com.poly.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {
	@RequestMapping("index")
	public String index() throws InterruptedException {
		Thread.sleep(100);
		return "admin/index";
	}
}
