package com.poly.controller.home;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.model.Account;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("home")
public class MyProfileController {
	@Autowired
	ParamService paramService;
	@Autowired
	CookieService cookieService;
	@Autowired
	ServletContext app;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	SessionService sessionService;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	@RequestMapping("my_profile")
	public String index(Model model) throws InterruptedException {
		Account item = sessionService.get("user");
		model.addAttribute("item", item);

		List<Order> orders = orderDAO.findOrderByAccount(item.getUsername());
		model.addAttribute("orders", orders);

		/* List<OrderDetail> prods = orderDetailDAO.findByOrder(item.getUsername()); */
		/* model.addAttribute("prods", prods); */
		Map<Order, List<OrderDetail>> orderDetailsMap = new HashMap<>();
		for (Order order : orders) {
			List<OrderDetail> orderDetails = orderDetailDAO.findByOrder(order.getId());
			orderDetailsMap.put(order, orderDetails);
		}
		model.addAttribute("orderDetailsMap", orderDetailsMap);
		Thread.sleep(100);
		return "home/my_profile";

	}

	@RequestMapping("my_profile/update")
	public String update(Model model, @ModelAttribute("item") Account item, BindingResult Errors)
			throws InterruptedException {
		if (item.getPhoto().isEmpty()) {
			model.addAttribute("isChange", false);
		}
		Thread.sleep(100);
		return "home/my_profile";
	}

}