package com.poly.controller.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.dao.AccountDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Product;
import com.poly.model.Top10;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("home")
public class HomeController {

	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	ProductDAO productDao;
	@Autowired
	AccountDAO accDAO;
	@Autowired
	OrderDetailDAO orderDDao;

	@RequestMapping("index")
	public String index(Model model) throws InterruptedException {
		Pageable pageable = PageRequest.of(0, 8);

		Pageable pageable_bestsaler = PageRequest.of(0, 16);
		Page<Top10> pageBestSaler = orderDDao.getTop10(pageable_bestsaler);

		Page<Product> pageAll = productDao.findAll(pageable);
		Page<Product> pageWatch = productDao.findByCategoryHome("1000", pageable);
		Page<Product> pageLap = productDao.findByCategoryHome("1001", pageable);
		Page<Product> pageCamera = productDao.findByCategoryHome("1002", pageable);
		Page<Product> pageSmartphone = productDao.findByCategoryHome("1003", pageable);
		Page<Product> pageFlycam = productDao.findByCategoryHome("1004", pageable);
		Page<Product> pageRobot = productDao.findByCategoryHome("1005", pageable);
		Page<Product> pageTivi = productDao.findByCategoryHome("1006", pageable);
		Page<Product> pageTablet = productDao.findByCategoryHome("1007", pageable);

		model.addAttribute("all", pageAll);
		model.addAttribute("watch", pageWatch);
		model.addAttribute("lap", pageLap);
		model.addAttribute("camera", pageCamera);
		model.addAttribute("phone", pageSmartphone);
		model.addAttribute("flycam", pageFlycam);
		model.addAttribute("robot", pageRobot);
		model.addAttribute("tv", pageTivi);
		model.addAttribute("tablet", pageTablet);

		model.addAttribute("bestsaler", pageBestSaler);

		sessionService.set("count", 0);
		Thread.sleep(100);
		return "home/index";
	}
}
