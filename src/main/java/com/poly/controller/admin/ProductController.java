package com.poly.controller.admin;

import java.util.Date;
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

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Category;
import com.poly.model.Product;

@Controller
@RequestMapping("admin")
public class ProductController {
	@Autowired
	ProductDAO dao;

	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping("product")
	public String paginate(Model model) {
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/table_product";
	}

	@RequestMapping("productControl")
	public String control(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		model.addAttribute("create", true);
		return "admin/productControl";
	}

	@RequestMapping("product/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		/*
		 * List<Product> items = dao.findAll(); model.addAttribute("items", items);
		 */
		model.addAttribute("edit", true);
		return "admin/productControl";
	}

	@RequestMapping("product/create")
	public String create(Model model, @Validated @ModelAttribute("item") Product item, BindingResult Errors) {

		if (Errors.hasErrors()) {
			model.addAttribute("message", "");
			model.addAttribute("create", true);
		} else {
			item.setCreateDate(new Date());
			dao.save(item);
			Pageable pageable = PageRequest.of(0, 10000);
			Page<Product> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("message", "Add success");
			return "admin/table_product";
		}
		return "admin/productControl";
	}

	@RequestMapping("product/delete/{id}")
	public String create(Model model, @PathVariable("id") Integer id) {
		dao.deleteById(id);
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("message", "Delete success");
		return "admin/table_product";
	}

	@RequestMapping("product/update")
	public String update(Model model, @Validated @ModelAttribute("item") Product item, BindingResult Errors) {
		if (Errors.hasErrors()) {
			model.addAttribute("message", "");
			model.addAttribute("edit", true);
		} else {
			dao.save(item);
			Pageable pageable = PageRequest.of(0, 10000);
			Page<Product> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("message", "Update success");
			return "admin/table_product";
		}
		return "admin/productControl";
	}

	@ModelAttribute("categories")
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.findAll();
		return categories;
	}

	@ModelAttribute("availables")
	public Map<Boolean, String> getAdmins() {
		Map<Boolean, String> map = new HashMap<>();
		map.put(true, "Stocking");
		map.put(false, "Out of Stock");
		return map;
	}
}
