package com.poly.controller.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Account;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("home")
public class LoginController {
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	AccountDAO accDAO;

	@Autowired
	ProductDAO proDAO;

	@GetMapping("login")
	public String index() {
		return "home/login";
	}

	@PostMapping("login")
	public String login(Model model) throws InterruptedException {
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);
		try {
			System.out.println(username);
			Account user = accDAO.findById(username).get();
			if (!user.getPassword().equals(password)) {
				model.addAttribute("message", "Wrong Password !");
			} else {
				sessionService.set("user", user);
				if (remember) {
					cookieService.add("username", user.getUsername(), 10);
					cookieService.add("password", user.getPassword(), 10);
				} else {
					cookieService.remove("username");
					cookieService.remove("password");
				}
				
				model.addAttribute("message", "Login Successfully");
			
				Thread.sleep(100);
				return "redirect:/home/index";
			}

		} catch (Exception e) {
			model.addAttribute("message", "Account invalid !");
		}
		Thread.sleep(100);
		return "home/login";
	}

}