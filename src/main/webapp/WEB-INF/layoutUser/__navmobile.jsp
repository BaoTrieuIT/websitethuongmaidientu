<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<!-- MOBILE NAVIGATION -->
<div class="hide-mob js-mob-hide">
	<div class="hide-mob__bg">
		<button class="hide-mob__close close-button js-mob-close"></button>
		<div class="hide-mob__mask js-mob-close"></div>
		<ul class="mob-nav">
			<li class="mob-nav__item">
				<a class="mob-nav__link" href="/home/index">Home</a>
			</li>
			<li class="mob-nav__item js-slidedown">
				<a class="mob-nav__link js-slidedown-button" href="/home/about">
					<span class="mob-nav__arrow">Pages</span>
				</a>
				<div class="slide-nav js-slidedown-hide">
					<ul class="slide-nav__list">
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/login">Login</a>
						</li>
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/registration">Registration</a>
						</li>
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/about">About us</a>
						</li>
						<!-- <li class="slide-nav__item"><a class="slide-nav__link" href="/home/collections">Collections</a></li> -->
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/faq">FAQ</a>
						</li>
						<!-- <li class="slide-nav__item"><a class="slide-nav__link" href="/home/post">Post</a></li>
								<li class="slide-nav__item"><a class="slide-nav__link" href="/home/404">404</a></li> -->
					</ul>
				</div>
			</li>
			<li class="mob-nav__item js-slidedown">
				<a class="mob-nav__link js-slidedown-button" href="#">
					<span class="mob-nav__arrow">Shop</span>
				</a>
				<div class="slide-nav js-slidedown-hide">
					<ul class="slide-nav__list">
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/my_profile">Profile</a>
						</li>
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/shop">Catalog</a>
						</li>
						<!-- <li class="slide-nav__item"><a class="slide-nav__link" href="/home/product_page">Product page</a></li> -->
						<li class="slide-nav__item">
							<a class="slide-nav__link" href="/home/cart">Cart</a>
						</li>
						<!-- <li class="slide-nav__item"><a class="slide-nav__link" href="/home/checkout-1">Checkout 1</a></li>
								<li class="slide-nav__item"><a class="slide-nav__link" href="/home/checkout-2">Checkout 2</a></li>
								<li class="slide-nav__item"><a class="slide-nav__link" href="/home/checkout-3">Checkout 3</a></li> -->
						<!-- 								<li class="slide-nav__item"><a class="slide-nav__link" href="/home/wishlist">Wishlist</a></li> -->
					</ul>
				</div>
			</li>
			<!-- <li class="mob-nav__item"><a class="mob-nav__link" href="/home/blog">Blog</a></li> -->
			<li class="mob-nav__item">
				<a class="mob-nav__link" href="/home/contacts">Contact</a>
			</li>
		</ul>
		<div class="hide-mob__socials">
			<ul class="socials__list socials__list_center">
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
</div>
<!-- MOBILE NAVIGATION END -->