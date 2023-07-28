<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Order List</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>No</th>
							<th>Order ID</th>
							<th>Username</th>
							<th>Create Date</th>
							<th>Address</th>
							<th>Order Detail</th>
							<!-- <th>Order Status</th> -->
							<th>Action</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No</th>
							<th>Order ID</th>
							<th>Username</th>
							<th>Create Date</th>
							<th>Address</th>
							<th>Order Detail</th>
							<!-- <th>Order Status</th> -->
							<th>Action</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0"></c:set>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i = i + 1}</td>
								<td>${item.id}</td>
								<td>${item.account.username}</td>
								<td>
									<fmt:formatDate value="${item.createDate}" pattern="dd-MM-yyyy" />
								</td>
								<td>${item.address}</td>
								<td>
									<a href="/admin/orderDetail?id=${item.id }" style="font-size: 14px">Order Detail</a>
								</td>
								<%-- <td>
									${item.orderstatus}
								</td> --%>
								<td>
									<a class='btn btn-danger btn-xs' style="font-size: 14px" href="/admin/order/delete/${item.id}">
										<span class="glyphicon glyphicon-edit"></span>
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
