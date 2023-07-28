<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--


 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<main>
	<div class="container-fluid px-4 ">
		<div class="category_list  d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Category List</h1>
			<div></div>
			<a href="/admin/category" class="btn btn-primary btn-sm">Category List</a>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<div class="bg-success text-light px-3">${message }</div>
			</div>
			<div class="card-body">
				<div class="col-6 offset-3">
					<form:form name="qryform" id="qryform" action="/admin/category" class="px-3" modelAttribute="item">
						<div class="card">
							<div class="card-body">
								<div class="form-group">
									<form:input type="text" class="form-control" id="id" path="id" aria-describedby="idHid" placeholder="Category ID" />
									
								</div>
								<div class="form-group">
									<form:input type="text" class="form-control" id="name" path="name" aria-describedby="nameHid" placeholder="Category Name" />
									<form:errors path="name" cssClass="badge badge-warning"/>
								</div>
							</div>
							<div class="card-footer text-muted">
								<c:if test="${create}">
									<button type="submit" class="btn btn-primary " formaction="/admin/category/create">Insert</button>
								</c:if>
								<c:if test="${edit}">
									<button type="submit" class="btn btn-warning" formaction="/admin/category/update">Update</button>
									<button type="submit" class="btn btn-danger" formaction="/admin/category/delete/${item.id}">Delete</button>
								</c:if>
								<button type="submit" class="btn btn-success" formaction="/admin/category">Reset</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</main>
