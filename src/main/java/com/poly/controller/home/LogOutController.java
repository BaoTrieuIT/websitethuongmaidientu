package com.poly.controller.home;

import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@Controller
@RequestMapping("home")
public class LogOutController {
	@Autowired
	SessionService sessionService;

	@Autowired
	ShoppingCartService shoppingCartService;

	@RequestMapping("logout")
	public String logout(HttpServletRequest request) throws InterruptedException {
		sessionService.remove("user");
		/* request.removeAttribute("cart"); */

		sessionService.remove("cart");

		shoppingCartService.clear();
		/*
		 * sessionService.remove("count"); sessionService.set("count", 0);
		 */
		Thread.sleep(100);
		return "redirect:/home/index";
	}
}
