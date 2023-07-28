package com.poly.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class BlankController {
@RequestMapping("blank")
public String index() {
	return "admin/blank";
}
}
