package com.poly.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
	@Id
	@NotBlank(message = "Not blank username")
	String username;
	@NotEmpty(message = "Not blank password")
	String password;
	@NotEmpty(message = "Not blank fullname")
	String fullname;
	@NotEmpty(message = "Not blank email")
	@Email(message = "Email inValidate")
	String email;
	@NotBlank(message = "Not blank image")
	String photo;
	boolean admin;
	@Column(nullable = false, columnDefinition = "bit default 0")
	boolean activated;
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
}
