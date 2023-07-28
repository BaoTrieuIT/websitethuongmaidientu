package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class Checkout_3Controller {

	@RequestMapping("checkout-3")
	public String checkout_3() throws InterruptedException {
		Thread.sleep(100);
		return "home/checkout-3";
	}
}