package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class FaqController {

	@RequestMapping("faq")
	public String index() throws InterruptedException {
		Thread.sleep(100);
		return "home/faq";
	}
}