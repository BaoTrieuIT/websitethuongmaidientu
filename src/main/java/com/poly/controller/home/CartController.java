package com.poly.controller.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@Controller
@RequestMapping("home")
public class CartController {

	@Autowired
	ShoppingCartService cart;

	@Autowired
	ParamService param;

	@Autowired
	SessionService session;

	@RequestMapping("cart")
	public String index(Model model) throws InterruptedException {
		model.addAttribute("cart", cart);
		Thread.sleep(100);
		return "home/cart";
	}

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) throws InterruptedException {
		cart.add(id);
		/* session.set("cart", cart); */
		return "redirect:/home/cart";
	}

	@PostMapping("/cart/addQty")
	public String addQty(Model model, @RequestParam("id") Integer id) {
		int qty = param.getInt("qty", 1);
		cart.addQty(id, qty);
		session.set("cart", cart);
		model.addAttribute("id", id);
		return String.format("redirect:/home/product_page/detail/%d", id);
	}

	@RequestMapping("/cart/sub/{id}")
	public String sub(@PathVariable("id") Integer id)  throws InterruptedException {
		cart.sub(id);
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);

		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/update")
	public String update() {
		Integer id = param.getInt("id", 0);
		int qty = param.getInt("qty", 0);
		cart.update(id, qty);
		return "redirect:/home/cart";
	}
}
