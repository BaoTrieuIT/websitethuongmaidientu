<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Wishlist</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item"><a class="breadcrumbs__link" href="#">Home</a></li>
							<li class="breadcrumbs__item">Wishlist</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" data-bg="https://via.placeholder.com/800x400"></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN WISHLIST -->
	<div class="wishlist-page wrapper">

		<div class="wishlist">
			<article class="wishlist__item js-remove">
				<div class="wishlist__cols">
					<div class="wishlist__left">
						<a class="wishlist__image-link" href="product_page.html">
							<img class="wishlist__image" src="https://via.placeholder.com/130x140" alt="">
						</a>
					</div>
					<div class="wishlist__right">
						<div class="wishlist__top">
							<div class="wishlist__col">
								<h2 class="wishlist__title">
									<a class="wishlist__link" href="product_page.html">Fashionee - catton shirt (S)</a>
								</h2>
							</div>
							<div class="wishlist__col">
								<button class="wishlist__remove remove-button js-remove-button"></button>
							</div>
						</div>
						<div class="wishlist__bottom">
							<div class="wishlist__col">
								<div class="wishlist-info">
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Article:</span>
										<span class="wishlist-info__text">000845DZ1</span>
									</div>
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Status:</span>
										<span class="wishlist-info__text">
											<span class="green">In stock </span>
										</span>
									</div>
								</div>
							</div>
							<div class="wishlist__col">
								<span class="wishlist__old-price">$52.99</span>
								<span class="wishlist__price">$35.99</span>
							</div>
							<div class="wishlist__col">
								<a class="wishlist__add add-button" href="#">add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</article>
			<article class="wishlist__item js-remove">
				<div class="wishlist__cols">
					<div class="wishlist__left">
						<a class="wishlist__image-link" href="product_page.html">
							<img class="wishlist__image" src="https://via.placeholder.com/130x140" alt="">
						</a>
					</div>
					<div class="wishlist__right">
						<div class="wishlist__top">
							<div class="wishlist__col">
								<h2 class="wishlist__title">
									<a class="wishlist__link" href="product_page.html">Warm casual sweater</a>
								</h2>
							</div>
							<div class="wishlist__col">
								<button class="wishlist__remove remove-button js-remove-button"></button>
							</div>
						</div>
						<div class="wishlist__bottom">
							<div class="wishlist__col">
								<div class="wishlist-info">
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Article:</span>
										<span class="wishlist-info__text">000845DZ1</span>
									</div>
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Status:</span>
										<span class="wishlist-info__text">
											<span class="green">In stock </span>
										</span>
									</div>
								</div>
							</div>
							<div class="wishlist__col">
								<span class="wishlist__price">$28.99</span>
							</div>
							<div class="wishlist__col">
								<a class="wishlist__add add-button" href="#">add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</article>
			<article class="wishlist__item js-remove">
				<div class="wishlist__cols">
					<div class="wishlist__left">
						<a class="wishlist__image-link" href="product_page.html">
							<img class="wishlist__image" src="https://via.placeholder.com/130x140" alt="">
						</a>
					</div>
					<div class="wishlist__right">
						<div class="wishlist__top">
							<div class="wishlist__col">
								<h2 class="wishlist__title">
									<a class="wishlist__link" href="product_page.html">Retro style handbag</a>
								</h2>
							</div>
							<div class="wishlist__col">
								<button class="wishlist__remove remove-button js-remove-button"></button>
							</div>
						</div>
						<div class="wishlist__bottom">
							<div class="wishlist__col">
								<div class="wishlist-info">
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Article:</span>
										<span class="wishlist-info__text">000845DZ1</span>
									</div>
									<div class="wishlist-info__col">
										<span class="wishlist-info__label">Status:</span>
										<span class="wishlist-info__text">
											<span class="green">In stock</span>
										</span>
									</div>
								</div>
							</div>
							<div class="wishlist__col">
								<span class="wishlist__price">$83.99</span>
							</div>
							<div class="wishlist__col">
								<a class="wishlist__add add-button" href="#">add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</article>
		</div>

		<div class="wishlist-page__bottom">
			<div class="wishlist-page__col">
				<button class="wishlist-page__button button">
					<span class="button__text">Clear wishlist</span>
				</button>
			</div>
			<div class="wishlist-page__col">
				<div class="wishlist-page__checkbox checkbox">
					<label class="checkbox__label">
						<input class="checkbox__input" type="checkbox">
						<span class="checkbox__icon"></span>
						<span class="checkbox__text">Show in stock only</span>
					</label>
				</div>
			</div>
		</div>

	</div>
	<!-- WISHLIST END -->

	<!-- BEGIN NEWSLETTER -->
	<aside class="newsletter">
		<div class="newsletter__banner" data-bg="https://via.placeholder.com/1680x450">
			<div class="newsletter__main">
				<div class="newsletter__bg">
					<div class="newsletter__max">
						<h4 class="newsletter__title">Newsletter</h4>
						<p class="newsletter__text">Be the first to hear about deals, offers and upcoming collections.</p>
						<form>
							<div class="newsletter-form">
								<div class="newsletter-form__left">
									<input class="newsletter-form__input text-input" type="email" placeholder="Enter your email">
								</div>
								<div class="newsletter-form__right">
									<button class="newsletter-form__button button">
										<span class="button__text">Subscribe</span>
									</button>
								</div>
							</div>
						</form>
					</div>
					<img class="newsletter__vector" src="/forUser/assets/img/svg/vector-newsletter.svg" alt="">
				</div>
			</div>
		</div>
	</aside>
	<!-- NEWSLETTER END -->

</main>
<!-- MAIN END -->