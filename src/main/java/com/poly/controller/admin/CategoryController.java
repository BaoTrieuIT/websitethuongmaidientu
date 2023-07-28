package com.poly.controller.admin;

import java.util.List;

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

import com.poly.dao.CategoryDAO;
import com.poly.model.Category;

@Controller

@RequestMapping("admin")
public class CategoryController {
	@Autowired
	CategoryDAO dao;

	@RequestMapping("category")
	public String index(Model model) {
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Category> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/table_category";
	}

	@RequestMapping("categoryControl")
	public String control(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		model.addAttribute("create", true);
		return "admin/categoryControl";
	}

	@RequestMapping("/category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		model.addAttribute("edit", true);
		return "admin/categoryControl";
	}

	@RequestMapping("/category/create")
	public String create(Model model, @Validated @ModelAttribute("item") Category item, BindingResult errors) {

		if (errors.hasErrors()) {
			model.addAttribute("message", "");
		} else {
			dao.save(item);

			Pageable pageable = PageRequest.of(0, 10000);
			Page<Category> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("message", "Add success");
			return "admin/table_category";
		}
		return "admin/categoryControl";
	}

	@RequestMapping("/category/delete/{id}")
	public String create(Model model, @PathVariable("id") String id) {
		dao.deleteById(id);
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Category> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("message", "Delete success");
		return "admin/table_category";
	}

	@RequestMapping("/category/update")
	public String update(Model model, @Validated @ModelAttribute("item") Category item, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "");
		} else {
			dao.save(item);
			Pageable pageable = PageRequest.of(0, 10000);
			Page<Category> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("message", "Update success");
			return "admin/table_category";
		}
		return "admin/categoryControl";
	}
}
