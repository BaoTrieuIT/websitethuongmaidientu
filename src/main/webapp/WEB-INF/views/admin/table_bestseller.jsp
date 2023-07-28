<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Best Seller</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>No</th>
							<th>Product Name</th>
							<th>Product Image</th>
							<th>Product Price</th>
							<th>Quantity</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No</th>
							<th>Product Name</th>
							<th>Product Image</th>
							<th>Product Price</th>
							<th>Quantity</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0"></c:set>
						<c:forEach var="item" items="${topList.content}">
							<tr>
								<td>${i = i + 1}</td>
								<td>${item.product.name}</td>
								<td>

									<img src="/forUser/image/products/${item.product.image }" alt="" width="20%" />
								</td>
								<td>
									<fmt:formatNumber value="${item.product.price }" type="currency" currencySymbol="$" />
								</td>
								<td>${item.sum }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
