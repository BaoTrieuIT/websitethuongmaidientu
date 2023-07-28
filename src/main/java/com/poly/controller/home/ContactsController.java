package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class ContactsController {
	@RequestMapping("contacts")
	public String index() throws InterruptedException {
		Thread.sleep(100);
		return "home/contacts";
	}
}
