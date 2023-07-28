<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--

 
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">My profile</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="index">Home</a>
							</li>
							<li class="breadcrumbs__item">My profile</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image"
						data-bg="https://images.unsplash.com/photo-1496096265110-f83ad7f96608?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
					></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN WISHLIST -->
	<div class="profile-page wrapper">

		<div class="profile-page__cols">

			<!-- BEGIN LEFT COLUMN -->
			<div class="profile-page__left">

				<div class="profile-nav tabs-nav js-line">
					<ul class="profile-nav__list tabs-nav__list tabs-nav__list_left">
						<li class="tabs-nav__item js-tabs-item js-line-item active">
							<a class="tabs-nav__link js-line-link js-tabs-link" href="#profile-tab-1">my profile</a>
						</li>
						<li class="tabs-nav__item js-line-item js-tabs-item ">
							<a class="tabs-nav__link js-line-link js-tabs-link" href="#profile-tab-2">my orders</a>
						</li>
					</ul>
					<div class="tabs-nav__line js-line-element"></div>
				</div>

				<!-- BEGIN TAB 1-->
				<div class="profile-tab js-tabs-content active" id="profile-tab-1">
					<form:form action="/home/my_profile" modelAttribute="item" method="GET">
						<div class="container bootstrap snippet">
							<div class="row">
								<div class="col-sm-4">
									<!--left col-->
									<form:input path="username" type="hidden" cssClass="text-input" value="${username }" />
									<form:input path="password" type="hidden" cssClass="text-input" value="${password }" />
									<div class="text-center">
										<c:choose>
											<c:when test="${!isChange}">
												<img src="/forAdmin/img/user/${photo}" class="avatar img-circle img-thumbnail" alt="avatar">
											</c:when>

											<c:otherwise>
												<img src="/forAdmin/img/user/${item.photo}" class="avatar img-circle img-thumbnail" alt="avatar">
											</c:otherwise>
										</c:choose>
										<form:input type="file" cssClass="text-center center-block file-upload" path="photo" value="${photo}" />
									</div>
									</hr>
									<br>


								</div>
								<!--/col-3-->
								<div class="col-sm-8">
									<div class="tab-content">
										<div class="tab-pane active" id="home">
											<hr>
											<form class="form">
												<div class="form-group">

													<div class="col-xs-6">
														<label for="first_name">
															<h4>Full name</h4>
														</label>
														<form:input type="text" cssClass="form-control" path="fullname" id="first_name" placeholder="fullname" value="${item.fullname}" />
														<form:errors path="fullname" cssClass="badge badge-danger" />
													</div>
												</div>
												<div class="form-group">

													<div class="col-xs-6">
														<label for="email">
															<h4>Email</h4>
														</label>
														<form:input type="email" cssClass="form-control" path="email" value="${item.email }" id="email" placeholder="you@email.com" />
														<form:errors path="email" cssClass="badge badge-danger" />
													</div>
												</div>
												<button class="newsletter-block__button button" type="submit" formaction="/home/my_profile/update">
													<span class="button__text">Save</span>
												</button>
											</form>

											<span class="badge badge-success">${message }</span>

											<hr>

										</div>
										<!--/tab-pane-->
									</div>
									<!--/tab-pane-->
								</div>
								<!--/tab-content-->

							</div>
							<!--/col-9-->
						</div>
						<!--/row-->
					</form:form>
				</div>
				<!-- TAB 1 END -->

				<!-- BEGIN TAB 2-->
				<div class="profile-tab js-tabs-content " id="profile-tab-2">

					<div class="orders js-faq">
						<c:forEach var="order" items="${orders}">
							<div class="order js-faq-item">
								<div class="order__top">
									<a class="order__button js-faq-button" href="javascript:void(0);">
										<div class="order-header">
											<div class="order-header__col">
												<input type="hidden" value="${order.id}" name="id" />
												<span class="order-header__number">${order.id}</span>
											</div>
											<div class="order-header__col">
												<span class="order-header__date">
													<fmt:formatDate value="${order.createDate}" pattern="MMMM, d, yyyy" />
												</span>
											</div>
											<div class="order-header__col">
												<div class="order-header__status order-status orange">
													<div class="order-status__cols">
														<div class="order-status__col">Going to you</div>
														<div class="order-status__col">
															<img class="order-status__icon"
																src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
																data-lazy="/forUser/assets/img/svg/order-icon_1.svg" alt="" style="width: 24px; height: 19px;"
															>
														</div>
													</div>
												</div>
											</div>
										</div>
									</a>
								</div>

								<div class="order__hide js-faq-hide">
									<div class="order__content">
										<div class="order-table">
											<c:set var="total" value="0" />
											<c:forEach var="prod" items="${orderDetailsMap[order]}">
												<article class="order-table__item">
													<div class="order-table__cols">
														<div class="order-table__col">
															<a class="order-table__image-link" href="product_page/detail/${prod.product.id}">
																<img class="order-table__image" src="/forUser/image/products/${prod.product.image}" alt="">
															</a>
														</div>
														<div class="order-table__col">
															<h4 class="order-table__title">
																<a class="order-table__link" href="product_page/detail/${prod.product.id}">${prod.product.name }</a>
															</h4>

															<span class="order-table__text">x${prod.quantity }</span>
														</div>
														<div class="order-table__col">
															<span class="order-table__price">
																<fmt:formatNumber value="${prod.quantity * prod.product.price}" type="currency" currencySymbol="$" maxFractionDigits="2" />
															</span>
														</div>
													</div>
												</article>
												<c:set var="total" value="${total + (prod.quantity * prod.product.price)}" />
											</c:forEach>
										</div>
										<div class="order-total">
											<div class="order-total__item">
												<div class="order-total__col">
													<span class="order-total__title">Order amount:</span>
												</div>
												<div class="order-total__col">
													<div class="order-total__price">$${total}</div>
												</div>
											</div>
											<div class="order-total__item">
												<div class="order-total__col">
													<span class="order-total__title">Delivered to:</span>
												</div>
												<div class="order-total__col">
													<div class="order-total__text">${order.address }</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<div class="profile-tab__bottom">
						<div class="profile-tab__col">
							<button class="profile-tab__button button">
								<span class="button__text">Delete history</span>
							</button>
						</div>
						<div class="profile-tab__col">
							<div class="profile-tab__checkbox checkbox">
								<label class="checkbox__label">
									<input class="checkbox__input" type="checkbox">
									<span class="checkbox__icon"></span>
									<span class="checkbox__text">Show only active</span>
								</label>
							</div>
						</div>
					</div>

				</div>
				<!-- TAB 2 END -->

			</div>
			<!-- LEFT COLUMN END -->



			<!-- BEGIN RIGHT COLUMN -->
			<aside class="profile-page__right">

				<form>
					<section class="newsletter-block">
						<h3 class="newsletter-block__title">Newsletter</h3>
						<p class="newsletter-block__text">Subscribe to be the first to hear about deals, offers and upcoming collections.</p>
						<input class="newsletter-block__input text-input" type="email" placeholder="Enter your email">
						<button class="newsletter-block__button button">
							<span class="button__text">Subscribe</span>
						</button>
					</section>
				</form>

			</aside>
			<!-- RIGHT COLUMN END -->

		</div>

	</div>
	<!-- WISHLIST END -->

</main>
<!-- MAIN END -->