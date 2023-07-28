<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<main>

	<div class="container-fluid px-4">
		<h1 class="mt-4">Report by Date</h1>
		<!-- general form elements -->
		<div class="row justify-content-around">
			<div class="card card-primary col-3">
				<div class="card-header">
					<h3 class="card-title">Order by Date</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<form action="/admin/table_reportbyDate" method="post">
					<div class="card-body">
						<div class="form-group">
							<label for="">From</label>
							<input type="text" id="datepicker" class="form-control" name="firstDate" placeholder="Select a date">
						</div>
						<div class="form-group">
							<label for="">To</label>
							<input type="text" id="datepicker" class="form-control" name="lastDate" placeholder="Select a date">
						</div>
					</div>
					<!-- /.card-body -->

					<div class="card-footer">
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
			<div class="card card-primary col-3">
				<div class="card-header">
					<h3 class="card-title">Order by Date</h3>
				</div>
				<!-- /.card-header -->
				<!-- form start -->
				<h4>
					<b>From :</b>
					<fmt:formatDate value="${firstDate}" pattern="dd-MM-yyyy" />
				</h4>
				<h4>
					<b>To :</b>
					<fmt:formatDate value="${lastDate}" pattern="dd-MM-yyyy" />
				</h4>
			</div>
		</div>

		<!-- /.card -->
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i>
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>No.</th>
							<th>Order ID</th>
							<th>Address</th>
							<th>Create Date</th>
							<th>Total Product Price</th>
							<th>Total Product Quantity</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No.</th>
							<th>Order ID</th>
							<th>Address</th>
							<th>Create Date</th>
							<th>Total Product Price</th>
							<th>Total Product Quantity</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0" />
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i = i + 1 }</td>
								<td>${item.order.id }</td>
								<td>${item.order.address }</td>
								<td >
									<fmt:formatDate value="${item.order.createDate}" pattern="dd-MM-yyyy" />
								</td>
								<td><fmt:formatNumber value="${item.sumPrice}" type="currency" currencySymbol="$" /></td>
								<td>${item.sumQuantity }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
