package com.poly.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("home")
public class CollectionsController {

	@RequestMapping("collections")
	public String index () {
		return "home/collections";
	}
}