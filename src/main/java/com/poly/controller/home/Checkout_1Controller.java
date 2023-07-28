package com.poly.controller.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.OrderDetailDAO;
import com.poly.model.Account;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.service.CheckoutService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@Controller
@RequestMapping("home")
public class Checkout_1Controller {
	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	SessionService sessionService;

	@Autowired
	ParamService paramService;

	@Autowired
	CheckoutService checkOutService;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	@RequestMapping("checkout-1")
	public String checkout_1(Model model) throws InterruptedException {
		model.addAttribute("cart", shoppingCartService);
		Thread.sleep(100);
		return "home/checkout-1";
	}

	@RequestMapping("order-detail")
	public String action(Model model) {
		String address = paramService.getString("address", "");
		String phone = paramService.getString("phone", "");
		String comments = paramService.getString("comments", "");

		if (shoppingCartService.getItems().isEmpty()) {
			return "redirect:/home/index";
		}

		if (address.equals("")) {
			model.addAttribute("address", "Address not blank !");
			return "redirect:/home/checkout-1";
		}

		if (!phone.matches("^(?:\\+?84|0)(?:3[2-9]|5[2689]|7[06-9]|8[1-689]|9[0-46-9])[0-9]{7}$")) {
			model.addAttribute("phone", "Phone invalid !");
			return "redirect:/home/checkout-1";
		}

		Account user = sessionService.get("user");
		Order order = checkOutService.order(user, phone, address, comments);
		List<OrderDetail> items = orderDetailDAO.findByOrderID(order.getId());
		model.addAttribute("order", order);
		model.addAttribute("items", items);
		return "home/checkout-3";
	}
}
