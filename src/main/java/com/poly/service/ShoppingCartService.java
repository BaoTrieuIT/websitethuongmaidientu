package com.poly.service;

import java.util.Collection;

import com.poly.model.CartItem;

public interface ShoppingCartService {

	CartItem add(Integer id);

	CartItem addQty(Integer id, int qty);

	CartItem sub(Integer id);

	void remove(Integer id);

	CartItem update(Integer id, int qty);

	void clear();

	Collection<CartItem> getItems();

	int getCount();

	double getAmount();

	double getTotal();
	
	int count();
}
