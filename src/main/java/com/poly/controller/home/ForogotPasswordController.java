package com.poly.controller.home;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.model.Account;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.Impl.MailServiceImpl;

import net.bytebuddy.utility.RandomString;

@Controller
@RequestMapping("home")
public class ForogotPasswordController {

	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService paramService;
	@Autowired
	MailServiceImpl mailer;
	@Autowired
	ServletContext app;

	@RequestMapping("forgot-password")
	public String index(Model model) throws InterruptedException {
		Thread.sleep(1000);
		return "home/forgot-password";
	}

	@PostMapping("forgot-password")
	public String action(Model model) {
		String email = paramService.getString("email", "");
		String username = paramService.getString("username", "");

		String subject = "Send your Password!";
		String body = "Your Password: ";
		String password;
		String randomPassword = RandomString.make(6);

		try {
			Account user = dao.findById(username).get();
			if (!user.getEmail().equals(email)) {
				model.addAttribute("message", "Wrong Email!");
			} else {
				user.setPassword(randomPassword);
				dao.save(user);
				mailer.send(email, subject, body + randomPassword);
				model.addAttribute("message", "Please check your Email!");
				return "home/login";
			}
		} catch (Exception e) {
			model.addAttribute("message", "Account invalid!");
		}
		return "home/forgot-password";

	}
}
