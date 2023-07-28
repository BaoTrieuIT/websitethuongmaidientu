package com.poly.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.poly.model.Order;
import com.poly.model.OrderList;

public interface OrderDAO extends JpaRepository<Order, Long> {

	@Query("SELECT o FROM Order o WHERE o.account.username = ?1")
	List<Order> findOrderByAccount(String username);

	@Query("Select o from Order o  where o.createDate between ?1 and ?2")
	Page<Order> findOrderByDate(Date firstDate, Date lastDate, Pageable pageable);

	@Query("SELECT new OrderList(o.order, SUM(o.quantity), SUM(o.price)) " +
	        "FROM OrderDetail o " +
	        "WHERE o.order.createDate BETWEEN ?1 AND ?2 " +
	        "GROUP BY o.order")
	Page<OrderList> findOrderByDateList(Date firstDate, Date lastDate, Pageable pageable);

	
	@Query("SELECT new OrderList(o.order, SUM(o.quantity), SUM(o.price)) " +
	        "FROM OrderDetail o " +
	        "GROUP BY o.order")
	Page<OrderList> findAllList(Pageable pageable);
}
