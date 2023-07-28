package com.poly.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.poly.model.OrderDetail;
import com.poly.model.RevenueReport;
import com.poly.model.Top10;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	Page<OrderDetail> findByOrder(Long id, Pageable pageable);

	@Query("SELECT o FROM OrderDetail o WHERE o.order.account.username = ?1")
	List<OrderDetail>  findByOrder(String username);
	
	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrder(Long id);
	/*
	 * select Top(10) p.Id, p.Name, p.Price, p.Image, sum(o.Quantity) from Products
	 * p inner join OrderDetails o on p.Id = o.ProductId group by p.Id, p.Name,
	 * p.Price, p.Image order by sum(o.Quantity) desc
	 */
	
	
	
	@Query("SELECT new Top10(o.product, sum(o.quantity)) FROM OrderDetail o GROUP BY o.product ORDER BY sum(o.quantity) DESC")
	Page<Top10> getTop10(Pageable pegeable);

	@Query("SELECT o FROM OrderDetail o WHERE o.order.id = ?1")
	List<OrderDetail> findByOrderID(Long orderid);

	@Query("Select new RevenueReport(d.product.category, sum(d.price*d.quantity), sum(d.quantity))"
			+ " from OrderDetail d Group By d.product.category")
	List<RevenueReport> getRevenueByCategory();
}