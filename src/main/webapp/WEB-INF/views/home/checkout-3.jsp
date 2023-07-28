<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Checkout</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="#">Home</a>
							</li>
							<li class="breadcrumbs__item">Checkout</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image"
						data-bg="https://img.freepik.com/free-photo/young-lady-use-cellphone-order-online-shopping-product-paying-bills-with-banking-app-with-transaction-successful-stay-house-quarantine-activity-fun-activity-coronavirus-prevention_7861-3270.jpg?w=1380&t=st=1686498217~exp=1686498817~hmac=835a59de4be217407d5fd95eaa64a58c239d663f9457f755bf614e110e6469ed"
					></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN CHECKOUT -->
	<div class="checkout-page wrapper">

		<div class="checkout-nav">
			<div class="checkout-nav__item active">
				<span class="checkout-nav__text">order details</span>
			</div>
			<div class="checkout-nav__item active current">
				<span class="checkout-nav__text">finish</span>
			</div>
		</div>

		<div class="checkout-page__cols">

			<!-- BEGIN LEFT COLUMN -->
			<div class="checkout-page__left">

				<section class="thanks">
					<div class="thanks__top">
						<h2 class="thanks__title">Thanks for your purchase!</h2>
						<p class="thanks__top-text">Everything went well, wait for the order to arrive at the time specified in the order.</p>
					</div>
					<p class="thanks__text">Approximate arrival via...</p>
					<div class="timer js-timer"></div>
				</section>

			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<aside class="checkout-page__right checkout-page__right_more">

				<section class="your-order">
					<h3 class="your-order__title">Your order</h3>
					<div class="side-cart">
						<c:forEach var="item" items="${items}">
							<article class="side-cart__item">
								<div class="side-cart__cols">
									<div class="side-cart__left">
										<a class="side-cart__image-link" href="product_page/detail/${item.product.id}">
											<img class="side-cart__image" src="/forUser/image/products/${item.product.image}" alt="">
										</a>
									</div>
									<div class="side-cart__right">
										<h4 class="side-cart__title">
											<a class="side-cart__link" href="product_page/detail/${item.product.id}">${item.product.name }</a>
										</h4>
										<span class="side-cart__text">x${item.quantity}</span>
										<div class="side-cart__prices">
											<span class="side-cart__price">$${item.price}</span>
										</div>
									</div>
								</div>
							</article>
						</c:forEach>
					</div>
					<c:set var="total" value="0" />
					<c:forEach var="item" items="${items }">
						<c:set var="total" value="${total+(item.price*item.quantity) }" />
					</c:forEach>
					<div class="your-order__bottom">
						<div class="your-order__col">
							<span class="your-order__bottom-text">Total</span>
						</div>
						<div class="your-order__col">
							<span class="your-order__bottom-price">
								<fmt:formatNumber value="${total}" type="currency" currencySymbol="$" maxFractionDigits="2" />
							</span>
						</div>
					</div>
				</section>
			</aside>
			<!-- RIGHT COLUMN END -->

		</div>

	</div>
	<!-- CHECKOUT END -->

</main>
<!-- MAIN END -->