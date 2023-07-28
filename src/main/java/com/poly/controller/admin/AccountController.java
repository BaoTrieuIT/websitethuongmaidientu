package com.poly.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.model.Account;

@Controller
@RequestMapping("admin")
public class AccountController {
	@Autowired
	AccountDAO dao;

	@RequestMapping("account")
	public String index(Model model) {
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Account> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/table_account";
	}

	@RequestMapping("accountControl")
	public String control(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		model.addAttribute("create", true);
		return "admin/accountControl";
	}

	@RequestMapping("/account/create")
	public String create(Model model, @Validated @ModelAttribute("item") Account item, BindingResult Errors) {
		if (Errors.hasErrors()) {
			model.addAttribute("message", "");
		} else {
			dao.save(item);
			model.addAttribute("message", "Add success");
			Pageable pageable = PageRequest.of(0, 10000);
			Page<Account> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			return "admin/table_account";
		}

		return "admin/accountControl";
	}

	@RequestMapping("/account/update")
	public String update(Model model, @Validated @ModelAttribute("item") Account item, BindingResult Errors) {

		if (Errors.hasErrors()) {
			model.addAttribute("message", "");
		} else {
			dao.save(item);
			Pageable pageable = PageRequest.of(0, 10000);
			Page<Account> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("message", "Update success");
			return "admin/table_account";
		}

		return "admin/accountControl";
	}

	@RequestMapping("/account/delete/{username}")
	public String delete(Model model, @PathVariable("username") String username) {
		dao.deleteById(username);
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Account> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("message", "Delete success");
		return "admin/table_account";
	}

	@RequestMapping("/account/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username) {
		Account item = dao.findById(username).get();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("edit", true);
		return "admin/accountControl";
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
