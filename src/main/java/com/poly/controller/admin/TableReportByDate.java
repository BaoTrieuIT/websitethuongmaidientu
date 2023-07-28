package com.poly.controller.admin;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Order;
import com.poly.model.OrderList;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("admin")
public class TableReportByDate {
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

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	@RequestMapping("table_reportbyDate")
	public String index(Model model) throws InterruptedException {
		/*
		 * Pageable pageable = PageRequest.of(0, 1000); Page<Order> page =
		 * orderDAO.findAll(pageable); model.addAttribute("page", page);
		 */

		Pageable pageable = PageRequest.of(0, 1000);
		Page<OrderList> page = orderDAO.findAllList(pageable);
		model.addAttribute("page", page);
		Thread.sleep(100);
		return "admin/table_reportbyDate";
	}

	@PostMapping("table_reportbyDate")
	public String orderByDate(Model model) throws InterruptedException {
		/*
		 * try { Date firstDate = paramService.getDate("firstDate", "dd-MM-yyyy"); Date
		 * lastDate = paramService.getDate("lastDate", "dd-MM-yyyy");
		 * System.out.println(firstDate); System.out.println(lastDate);
		 * model.addAttribute("firstDate", firstDate); model.addAttribute("lastDate",
		 * lastDate); Pageable pageable = PageRequest.of(0, 1000); Page<Order> page =
		 * orderDAO.findOrderByDate(firstDate, lastDate, pageable);
		 * model.addAttribute("page", page);
		 * 
		 * } catch (Exception e) { model.addAttribute("firstDate", "");
		 * model.addAttribute("lastDate", ""); Pageable pageable = PageRequest.of(0,
		 * 1000); Page<Order> page = orderDAO.findAll(pageable);
		 * model.addAttribute("page", page); }
		 */

		try {
			Date firstDate = paramService.getDate("firstDate", "dd-MM-yyyy");
			Date lastDate = paramService.getDate("lastDate", "dd-MM-yyyy");
			System.out.println(firstDate);
			System.out.println(lastDate);
			model.addAttribute("firstDate", firstDate);
			model.addAttribute("lastDate", lastDate);
			Pageable pageable = PageRequest.of(0, 1000);
			Page<OrderList> page = orderDAO.findOrderByDateList(firstDate, lastDate, pageable);
			model.addAttribute("page", page);

		} catch (Exception e) {
			model.addAttribute("firstDate", "");
			model.addAttribute("lastDate", "");
			Pageable pageable = PageRequest.of(0, 1000);
			Page<OrderList> page = orderDAO.findAllList(pageable);
			model.addAttribute("page", page);
		}
		Thread.sleep(100);
		return "admin/table_reportbyDate";
	}
}