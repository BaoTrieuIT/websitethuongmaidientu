<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<div class="order_list d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Product List</h1>
			<div></div>
			<a href="/admin/productControl" class="btn btn-primary btn-sm">Add new product</a>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
				<div class="bg-success text-light px-3">${message }</div>
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Image</th>
							<th>Price</th>
							<th>Create Date</th>
							<th>Available</th>
							<th>Category ID</th>
							<th>Action</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Image</th>
							<th>Price</th>
							<th>Create Date</th>
							<th>Available</th>
							<th>Category ID</th>
							<th>Action</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>
									<img src="/forUser/image/products/${item.image }" alt="" width="50%" />
								</td>
								<td>
									<fmt:formatNumber value="${item.price }" type="currency" currencySymbol="$" />
								</td>
								<td>
									<fmt:formatDate value="${item.createDate}" pattern="dd-MM-yyyy" />
								</td>
								<td>${item.available}</td>
								<td>${item.category.name}</td>
								<td>
									<a class="btn btn-warning btn-xs edit-button" style="font-size: 14px" href="/admin/product/edit/${item.id}">
										<span class="glyphicon glyphicon-edit"></span>
										Edit
									</a>
									<a href="/admin/product/delete/${item.id}" style="font-size: 14px" class="btn btn-danger btn-xs">
										<span class="glyphicon glyphicon-remove"></span>
										Delete
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
