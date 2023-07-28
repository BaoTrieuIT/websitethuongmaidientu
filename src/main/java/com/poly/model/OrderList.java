package com.poly.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class OrderList  implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	Order order;
	long sumQuantity;
	double sumPrice;
}
