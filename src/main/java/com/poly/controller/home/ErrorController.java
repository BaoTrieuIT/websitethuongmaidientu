package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class ErrorController {
	@RequestMapping("404")
	public String index() {
		return "home/404";
	}
}
