<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--


 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<main>
	<div class="container-fluid px-4">
		<div class="order_list d-flex justify-content-around align-items-center">
			<h1 class="mt-4 me-auto">Product Control</h1>
			<div></div>
			<a href="/admin/product" class="btn btn-primary btn-sm">Product List</a>
		</div>
		<div class="card mb-4">
			<div class="card-header">
				<div class="bg-success text-light px-3">${message }</div>
			</div>
			<div class="card-body">
				<div class="col-6 offset-3">
					<form:form name="qryform" id="qryform" action="/admin/product" class="px-3" modelAttribute="item">
						<div class="card">
							<div class="card-body">
								<div class="col row">
									<div class="col-6">
										<form:input type="hidden" class="form-control" id="id" path="id"/>
										<div class="form-group">
										Name:
											<form:input type="text" class="form-control" id="name" path="name" aria-describedby="nameHid" placeholder="Product Name" />
											<form:errors path="name" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
										Price:
											<form:input type="number" class="form-control" id="price" path="price" aria-describedby="priceHid" placeholder="Price" />
											<form:errors path="price" cssClass="badge badge-danger" />
										</div>
										<div class="form-group">
											<div class="file-upload">
												<div class="image-upload-wrap">
													<form:input path="image" type="file"  class="file-upload-input" onchange="readURL(this);" accept="/forUser/image/products/${item.image }" />
													<div class="drag-text">
														<h3>Drag and drop a file or select add Image</h3>
													</div>
												</div>
												<div class="file-upload-content">
													<img class="file-upload-image" src="/forUser/image/products/${item.image }" alt="your image" name="image" />
													<div class="image-title-wrap">
														<button type="button" onclick="removeUpload()" class="remove-image">
															Remove
															<span class="image-title">Uploaded Image</span>
														</button>
													</div>
												</div>
											</div>
											<form:errors path="image" cssClass="badge badge-danger" />
										</div>
									</div>
									<div class="col-6">
										<div class="form-group ">
											Category:
											<form:select path="category" cssClass="form-control">
												<form:options items="${categories }" itemLabel="name" />
											</form:select>
										</div>
										<div class="form-group ">
											Available: <br />
											<form:radiobuttons class="mx-3 " path="available" items="${availables }" delimiter="" />
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer text-muted">
								<c:if test="${create}">
									<button type="submit" class="btn btn-primary " formaction="/admin/product/create">Insert</button>
								</c:if>
								<c:if test="${edit}">
									<button type="submit" class="btn btn-warning" formaction="/admin/product/update">Update</button>
									<button type="submit" class="btn btn-danger" formaction="/admin/product/delete/${item.id}">Delete</button>
								</c:if>
								<button type="submit" class="btn btn-success" formaction="/admin/productControl">Reset</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</main>
