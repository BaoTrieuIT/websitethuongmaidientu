<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main>
	<div class="container-fluid px-4">
		<div class="account_control d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Account List</h1>
			<div></div>
			<a href="/admin/accountControl" class="btn btn-primary btn-sm">Add new Account</a>
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
							<th>Photo</th>
							<th>Username</th>
							<th>Password</th>
							<th>FullName</th>
							<th>Email</th>
							<th>Activated</th>
							<th>Admin</th>
							<th>Action</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No</th>
							<th>Photo</th>
							<th>Username</th>
							<th>Password</th>
							<th>FullName</th>
							<th>Email</th>
							<th>Activated</th>
							<th>Admin</th>
							<th>Action</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0"></c:set>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${i = i + 1}</td>
								<th><img src="/forAdmin/img/user/${item.photo }" alt="" width="30%" /></th>
								<th>${item.username}</th>
								<th>${item.password }</th>
								<th>${item.fullname }</th>
								<th>${item.email }</th>
								<th>${item.activated }</th>
								<th>${item.admin }</th>
								<th><a class='btn btn-warning btn-xs' style="font-size: 14px" href="/admin/account/edit/${item.username}">
										<span class="glyphicon glyphicon-edit"></span>
										Edit
									</a> <a href="/admin/account/delete/${item.username}" style="font-size: 14px" class="btn btn-danger btn-xs">
										<span class="glyphicon glyphicon-remove"></span>
										Delete </th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
