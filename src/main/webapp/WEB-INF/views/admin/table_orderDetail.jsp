<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<div class="order_list d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Order List</h1>
			<div></div>
			<a href="/admin/order" class="btn btn-primary btn-sm">Order List</a>
		</div>
		<div class="card mb-4 col-6">
			<div class="card-header bg-success text-white fw-bold">Customer</div>
			<div class="card-body">
				<div class="row">
					<div class="col-3">
						<h5>ID:</h5>
						<h5>Name:</h5>
						<h5>Address:</h5>
						<h5>Email:</h5>
						<h5>Phone:</h5>
						<h5>Create Date:</h5>
						<h5>Order Status:</h5>
					</div>
					<div class="col-9">
						<h5>
							<b>${ord.account.username }</b>
						</h5>
						<h5>
							<b>${ord.account.fullname }</b>
						</h5>
						<h5>
							<b>${ord.address }</b>
						</h5>
						<h5>
							<b>${ord.account.email }</b>
						</h5>
						<h5>
							<b>${ord.phone }</b>
						</h5>
						<h5>
							<b> <fmt:formatDate value="${ord.createDate }" pattern="dd-MM-yyyy" />
							</b>
						</h5>
						<h5>
							<b> Delivering
							</b>
						</h5>
					</div>
				</div>

			</div>
		</div>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>OrderDetail ID</th>
							<th>Product Image</th>
							<th>Product Name</th>
							<th>Product Category</th>
							<th>Quantity</th>
							<th>Product Price</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>OrderDetail ID</th>
							<th>Product Image</th>
							<th>Product Name</th>
							<th>Product Category</th>
							<th>Quantity</th>
							<th>Product Price</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>
									<img src="/forUser/image/products/${item.product.image}" alt="" width=20% />
								</td>
								<td>${item.product.name}</td>
								<td>${item.product.category.name}</td>
								<td>${item.quantity }</td>
								<td>$${item.product.price}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>


</body>
</html>