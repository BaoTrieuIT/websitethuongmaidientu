package com.poly.service.Impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.dao.ProductDAO;
import com.poly.model.CartItem;
import com.poly.model.Product;
import com.poly.service.SessionService;
import com.poly.service.ShoppingCartService;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	Map<Integer, CartItem> map = new HashMap<>();
	@Autowired
	ProductDAO productDAO;

	@Autowired
	SessionService ss;

	@Override
	public CartItem add(Integer id) {
		CartItem item = map.get(id);
		if (item == null) {
			Product product = productDAO.findById(id).get();
			item = new CartItem();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			map.put(id, item);
		} else {
			item.setQty(item.getQty() + 1);
		}
		return item;
	}

	@Override
	public CartItem sub(Integer id) {
		CartItem item = map.get(id);
		if (item == null) {
			Product product = productDAO.findById(id).get();
			item = new CartItem();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(1);
			map.put(id, item);
		} else {
			if (item.getQty() > 1) {
				item.setQty(item.getQty() - 1);
			} else {
				item.setQty(1);
			}
		}
		return item;
	}

	@Override
	public void remove(Integer id) {
		ss.set("count", map.size());
		map.remove(id);

	}

	@Override
	public CartItem update(Integer id, int qty) {
		CartItem item = map.get(id);
		item.setQty(qty);
		return item;
	}

	@Override
	public void clear() {

		map.clear();
		ss.set("count", map.size());
	}

	@Override
	public Collection<CartItem> getItems() {
		// TODO Auto-generated method stub
		return map.values();
	}

	@Override
	public int getCount() {
		return map.values().stream().mapToInt(item -> item.getQty()).sum();
	}

	@Override
	public double getAmount() {
		return map.values().stream().mapToDouble(item -> item.getPrice() * item.getQty()).sum();
	}

	@Override
	public double getTotal() {
		double total = 0;
		for (CartItem item : map.values()) {
			total += (item.getPrice() * item.getQty());
		}
		return total;
	}

	@Override
	public CartItem addQty(Integer id, int qty) {
		CartItem item = map.get(id);
		if (item == null) {
			Product product = productDAO.findById(id).get();
			item = new CartItem();
			item.setId(product.getId());
			item.setImage(product.getImage());
			item.setName(product.getName());
			item.setPrice(product.getPrice());
			item.setQty(qty);
			map.put(id, item);
			ss.set("count", map.size());
		} else {
			item.setQty(qty);
		}
		return item;
	}

	public int count() {
		return map.size();
	}

}