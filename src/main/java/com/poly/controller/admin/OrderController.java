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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("admin")
public class OrderController {
	@Autowired
	OrderDAO dao;

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	OrderDetailDAO orderDetailDAO;
	@Autowired
	OrderDAO orderDAO;

	@RequestMapping("order")
	public String index(Model model) {
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Order> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/table_order";
	}

	@RequestMapping("orderDetail")
	public String locBrand(Model model, @RequestParam("id") long id) {
		Order order = new Order();
		List<Order> orders = orderDAO.findAll();
		for (Order ord : orders) {
			if (ord.getId() == id) {
				order = ord;
				break;
			}
		}
		model.addAttribute("ord", order);

		Pageable pageable = PageRequest.of(0, 999);
		Page<OrderDetail> page = orderDetailDAO.findByOrder(id, pageable);
		model.addAttribute("page", page);
		return "admin/table_orderDetail";
	}
	
	
	@RequestMapping("/order/delete/{id}")
	public String create(Model model,@PathVariable("id") long id) {
		dao.deleteById(id);
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Order> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/table_order";
	}
	
	
	/*
	 * @ModelAttribute("orderstatus") public Map<Boolean, String> getOrderStatus() {
	 * Map<Boolean, String> map = new HashMap<>(); map.put(true, "Delivering");
	 * map.put(false, "Delivered"); return map; }
	 */

}
