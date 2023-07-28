<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 
 --%><%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<main>
	<div class="container-fluid px-4">
		<div class="account_control d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Account Control</h1>
			<div></div>
			<a href="/admin/account" class="btn btn-primary mb-2">Account List</a>
		</div>

		<div class="card mb-4">
			<div class="card-body">
				<div class="col-6 offset-3">
					<form:form name="qryform" id="qryform" action="/admin/account" class="px-3" modelAttribute="item">
						<div class="card">
							<div class="card-header">
								<div class="bg-success text-light px-3">${message }</div>
							</div>
							<div class="card-body">
								<div class="form-group row">
									<div class="col-6">
										<div class="form-group">
											<form:input type="text" class="form-control" id="username" path="username" aria-describedby="usHid" placeholder="Username" />
											<form:errors path="username" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											<form:input type="password" class="form-control" id="password" path="password" aria-describedby="passHid" placeholder="Password" />
											<form:errors path="password" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											<form:input type="file" class="form-control" id="photo" path="photo" aria-describedby="photoHid" placeholder="photo" />
											<form:errors path="photo" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											Activity:
											<form:radiobuttons class="mx-2" path="activated" items="${activateds }" delimiter="" />
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<form:input type="text" class="form-control" id="fullname" path="fullname" aria-describedby="fullnameHid" placeholder="fullname" />
											<form:errors path="fullname" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											<form:input type="email" class="form-control" id="email" path="email" aria-describedby="emailHid" placeholder="email" />
											<form:errors path="email" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											Role:
											<form:radiobuttons class="mx-2" path="admin" items="${admins }" delimiter="" />
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer text-muted">
								<c:if test="${create}">
									<button type="submit" class="btn btn-primary " formaction="/admin/account/create">Insert</button>
								</c:if>
								<c:if test="${edit}">
									<button type="submit" class="btn btn-warning" formaction="/admin/account/update">Update</button>
									<button type="submit" class="btn btn-danger" formaction="/admin/account/delete/${item.username}">Delete</button>
								</c:if>
								<button type="submit" class="btn btn-success" formaction="/admin/accountControl">Reset</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</main>