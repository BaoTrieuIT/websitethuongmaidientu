package com.poly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.dao.OrderDAO;
import com.poly.dao.OrderDetailDAO;
import com.poly.model.Account;
import com.poly.model.CartItem;
import com.poly.model.Order;
import com.poly.model.OrderDetail;
import com.poly.model.Product;

@Service
public class CheckoutService {
	@Autowired
	ShoppingCartService shoppingCartService;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	OrderDetailDAO orderDetailDAO;

	public Order order(Account user, String phone, String address, String comments) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		order.setPhone(phone);
		order.setComments(comments);
		orderDAO.save(order);
		for (CartItem item : shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());

			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
