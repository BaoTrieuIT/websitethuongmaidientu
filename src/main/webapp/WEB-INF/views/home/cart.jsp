<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<!-- BEGIN MAIN -->
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Cart</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="#">Home</a>
							</li>
							<li class="breadcrumbs__item">Cart</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image"
						data-bg="https://images.unsplash.com/photo-1557821552-17105176677c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80"
					></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN CART -->
	<div class="cart-page wrapper">

		<div class="cart-page__cols">

			<!-- BEGIN LEFT COLUMN -->
			<div class="cart-page__left">

				<div class="cart-table wishlist">
					<c:forEach var="item" items="${cart.items}">
						<form action="/home/cart/update" method="post">
							<input type="hidden" name="id" value="${item.id}">
							<article class="wishlist__item js-remove">
								<div class="wishlist__cols">
									<div class="wishlist__left">
										<a class="wishlist__image-link" href="product_page/detail/${item.id}">
											<img class="wishlist__image" src="/forUser/image/products/${item.image}" alt="">
										</a>
									</div>
									<div class="wishlist__right">
										<div class="wishlist__top wishlist__top_cart">
											<div class="wishlist__col">
												<h2 class="wishlist__title">
													<a class="wishlist__link" href="product_page/detail/${item.id}">${item.name }</a>
												</h2>
											</div>
											<div class="wishlist__col">
												<a href="/home/cart/remove/${item.id}" class="wishlist__remove remove-button js-remove-button"></a>
											</div>
										</div>
										<div class="wishlist__bottom wishlist__bottom_cart">
											<div class="wishlist__cart-col">
												<span class="wishlist__price wishlist__price_small">$${item.price}</span>

											</div>
											<div class="wishlist__cart-col">
												<div class="wishlist__count count js-count">
													<a class="count__button count__button_minus js-count-minus" href="/home/cart/sub/${item.id}"
														onclick="document.querySelector('.js-count-input').click(); return false;"
													></a>
													<input class="count__input js-count-input" type="text" value="${item.qty }" min="0" maxlength="4" name="qty" onclick="this.form.submit()">
													<a class="count__button count__button_plus js-count-plus" href="/home/cart/add/${item.id}"
														onclick="document.querySelector('.js-count-input').click(); return false;"
													></a>
												</div>
											</div>
											<div class="wishlist__cart-col">
												<span class="wishlist__price wishlist__price_total">
													<fmt:formatNumber value="${item.price * item.qty}" type="currency" currencySymbol="$" maxFractionDigits="2" />
												</span>
											</div>
										</div>
									</div>
								</div>
							</article>
						</form>
					</c:forEach>

				</div>

				<section class="promo">
					<div class="promo__top">
						<h3 class="promo__title">You have a promo&nbsp;code?</h3>
						<p class="promo__text">To receive up-to-date promotional codes, subscribe to us on social networks.</p>
					</div>
					<div class="promo-form">
						<div class="promo-form__left">
							<input class="promo-form__input text-input" type="text" placeholder="Enter promo code">
						</div>
						<div class="promo-form__right">
							<button class="promo-form__button button">
								<span class="button__text">
									<span class="button__arrow"></span>
								</span>
							</button>
						</div>
					</div>
				</section>

				<div class="cart-socials socials">
					<span class="cart-socials__text socials__text">Find us here:</span>
					<ul class="cart-socials__list socials__list">
						<li class="socials__item">
							<a class="socials__link" href="#">Fb</a>
						</li>
						<li class="socials__item">
							<a class="socials__link" href="#">Tw</a>
						</li>
						<li class="socials__item">
							<a class="socials__link" href="#">Ins</a>
						</li>
						<li class="socials__item">
							<a class="socials__link" href="#">Pt</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<aside class="cart-page__right">
				<section class="your-order">
					<h3 class="your-order__title">Your order</h3>
					<div class="your-order__bottom">
						<div class="your-order__col">
							<span class="your-order__bottom-text">Total</span>
						</div>
						<div class="your-order__col">
							<span class="your-order__bottom-price">$${cart.total}</span>
						</div>
					</div>
					<a class="your-order__button button text-white" href="checkout-1">
						<span class="button__text">Checkout</span>
					</a>
				</section>
			</aside>
			<!-- RIGHT COLUMN END -->

		</div>

	</div>
	<!-- CART END -->

</main>
<!-- MAIN END -->