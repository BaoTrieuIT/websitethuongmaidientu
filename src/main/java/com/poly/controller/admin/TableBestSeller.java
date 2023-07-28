package com.poly.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Top10;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("admin")
public class TableBestSeller {

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

	@RequestMapping("table_bestseller")
	public String index(Model model) throws InterruptedException {
		Pageable pageable = PageRequest.of(0, 10000);
		Page<Top10> topList = orderDetailDAO.getTop10(pageable);
		model.addAttribute("topList", topList);
		Thread.sleep(100);
		return "admin/table_bestseller";
	}

}
