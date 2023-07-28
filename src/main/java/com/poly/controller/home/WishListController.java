package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class WishListController {

	@RequestMapping("wishlist")
	public String index() throws InterruptedException {
		Thread.sleep(100);
		return "home/wishlist";
	}
}