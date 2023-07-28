<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4 ">
		<div class="category_list  d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Category List</h1>
			<div></div>
			<a href="/admin/categoryControl" class="btn btn-primary btn-sm">Add new Category</a>
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
							<th>No</th>
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No</th>
							<th>Category ID</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0"></c:set>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i = i + 1}</td>
								<td>${item.id}</td>
								<td>${item.name }</td>
								<td>
									<a class="btn btn-warning btn-xs" style="font-size: 14px" href="/admin/category/edit/${item.id}">
										<span class="glyphicon glyphicon-edit"></span>
										Edit
									</a>
									<a href="/admin/category/delete/${item.id}" style="font-size: 14px" class="btn btn-danger btn-xs">
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
