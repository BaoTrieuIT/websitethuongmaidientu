<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Tables</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>No.</th>
							<th>Customer Image</th>
							<th>Customer ID</th>
							<th>Customer Name</th>
							<th>Customer Email</th>
							<th>Order Count</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No.</th>
							<th>Customer Image</th>
							<th>Customer ID</th>
							<th>Customer Name</th>
							<th>Customer Email</th>
							<th>Order Count</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0" />
						<c:forEach var="item" items="${topCustomer }">
							<tr>
								<td>${i = i + 1}</td>
								<td>
									<img src="/forAdmin/img/user/${item.account.photo}" alt=""  width="20%"/>
								</td>
								<td>${item.account.username }</td>
								<td>${item.account.fullname }</td>
								<td>${item.account.email }</td>
								<td>${item.count }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
