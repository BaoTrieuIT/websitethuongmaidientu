<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Revenue</h1>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> DataTable Example
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>No.</th>
							<th>Category Name</th>
							<th>Category Revenue</th>
							<th>Category Count</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>No.</th>
							<th>Category Name</th>
							<th>Category Revenue</th>
							<th>Category Count</th>
						</tr>
					</tfoot>
					<tbody>
						<c:set var="i" value="0" />
						<c:forEach var="item" items="${items }">
							<tr>
								<td>${i = i + 1}</td>
								<td>${item.category.name }</td>
								<td>
									<fmt:formatNumber value="${item.revenue}" type="currency" currencySymbol="$" />
								</td>
								<td>${item.count}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
