package com.poly.controller.home;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.AccountDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Product;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("home")
public class ShopController {

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

	@RequestMapping("shop")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) throws InterruptedException {
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> pageAll = productDao.findAll(pageable);
		sessionService.remove("keywords");
		/*
		 * int currentPage = 1; int totalPages = pageAll.getTotalPages();
		 * 
		 *
		 * model.addAttribute("totalPages", totalPages);
		 * model.addAttribute("currentPage", currentPage);
		 */
		long totalItems = pageAll.getTotalElements();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("pageAll", pageAll);
		Thread.sleep(100);
		return "home/shop";
	}

	@RequestMapping("brand")
	public String category(Model model, @RequestParam("field") Optional<String> field,
			@RequestParam("p") Optional<Integer> p) throws InterruptedException {
		String field1 = field.orElse(sessionService.get("field"));
		sessionService.set("field", field1);
		sessionService.remove("keywords");
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = productDao.findByCategory(field1, pageable);
		long totalItems = page.getTotalElements();
		model.addAttribute("totalItems", totalItems);
		model.addAttribute("page", page);
		model.addAttribute("field", field1);
		/* return "redirect:/home/brand?field=${field}"; */Thread.sleep(100);
		return "home/brand";
	}

	@RequestMapping("price")
	public String searchPrice(Model model, @RequestParam("p") Optional<Integer> p,
			@RequestParam("minPrice") Optional<Integer> minPrice,
			@RequestParam("maxPrice") Optional<Integer> maxPrice) {

		System.out.println(minPrice);
		System.out.println(maxPrice);

		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		
		 Page<Product> products = productDao.findByPrice(minPrice.orElse(0), maxPrice.orElse(Integer.MAX_VALUE), pageable);
			/* Page<Product> pageAll = productDao.findAll(pageable); */
		model.addAttribute("pageAll", products);
		return "home/shop";
	}

	@RequestMapping("search")
	public String searchKeyword(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) throws InterruptedException {
		/* Integer minPrice = min.orElse(Integer.MIN_VALUE); */
		boolean search = true;
		String kwords = kw.orElse(sessionService.getdefaultValue("keywords", ""));
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> pageAll = productDao.findAllByNameLike(kwords + "%", pageable);
		model.addAttribute("pageAll", pageAll);
		model.addAttribute("search", search);
		Thread.sleep(100);
		return "home/shop";
	}

	@RequestMapping("searchBrand")
	public String searchKeywordBrand(Model model, @RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) throws InterruptedException {
		String field1 = sessionService.get("field");
		boolean search = true;
		String kwords = kw.orElse(sessionService.getdefaultValue("keywords", ""));
		/* String field1 = field.orElse(sessionService.get("field")); */
		sessionService.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = productDao.findByCategoryKeyword(field1, kwords + "%", pageable);
		model.addAttribute("page", page);
		model.addAttribute("search", search);
		Thread.sleep(100);
		return "home/brand";
	}
}