package com.poly.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable {
	@Id
	@NotBlank(message = "ID not blank !")
	String id;
	@NotBlank(message = "Name not blank !")
	String name;
	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<Product> products;
}
