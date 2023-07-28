package com.poly.controller.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
public class ProductPageController {
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
	OrderDetailDAO orderDDao;

	@RequestMapping("product_page")
	public String index() throws InterruptedException {
		Thread.sleep(100);
		return "home/product_page";
	}

	@RequestMapping(value = "product_page/detail/{id}")
	public String view(ModelMap model, @PathVariable("id") int id) throws InterruptedException {
		Pageable pageable_bestsaler = PageRequest.of(0, 16);
		Page<Top10> pageBestSaler = orderDDao.getTop10(pageable_bestsaler);
		Product product = new Product();
		List<Product> list = proDAO.findAll();
		for (Product pr : list) {
			if (pr.getId() == id) {
				product = pr;
				break;
			}
		}
		model.addAttribute("list", list);
		model.addAttribute("pr", product);
		model.addAttribute("bestsaler", pageBestSaler);
		Thread.sleep(100);
		return "home/product_page";
	}

}