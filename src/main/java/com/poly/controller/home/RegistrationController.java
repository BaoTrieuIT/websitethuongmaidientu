package com.poly.controller.home;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.dao.AccountDAO;
import com.poly.model.Account;
import com.poly.service.ParamService;

@Controller
@RequestMapping("home")
public class RegistrationController {
	@Autowired
	ParamService paramService;
	@Autowired
	ServletContext app;
	@Autowired
	AccountDAO accountDAO;
	@Value("${upload.dir}") // Đường dẫn đến thư mục lưu trữ
	private String uploadDir;

	@RequestMapping("registration")
	public String index(Model model) throws InterruptedException {
		Account item = new Account();
		model.addAttribute("item", item);
		Thread.sleep(100);
		return "home/registration";
	}

	@RequestMapping("registration/regis")
	public String regis(Model model, @Validated @ModelAttribute("item") Account item, BindingResult Errors)
			throws InterruptedException {

		if (Errors.hasErrors()) {
			model.addAttribute("message", "");
		} else {
			String repass = paramService.getString("repassword", "");
			System.out.println(repass);
			if (!item.getPassword().equals(repass)) {
				model.addAttribute("isValid", false);
				model.addAttribute("error_pass", "not the same as password");
			} else {

				model.addAttribute("message", "Success");
				item.setActivated(true);
				item.setAdmin(false);
				accountDAO.save(item);
				model.addAttribute("message", "Insert successfully");
				Thread.sleep(100);
				return "home/login";
			}
		}
		Thread.sleep(100);
		return "home/registration";

	}

	@ModelAttribute("activateds")
	public Map<Boolean, String> getActivateds() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Active");
		map.put(false, "Unactive");
		return map;
	}

	@ModelAttribute("admins")
	public Map<Boolean, String> getAdmins() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Admin");
		map.put(false, "Customer");
		return map;
	}
}