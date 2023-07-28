<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- BEGIN HEADER -->
<header class="header">
	<div class="header__main">
		<div class="header__cols">
			<div class="header__left">
				<div class="header__cols">
					<div class="header__col">
						<button class="mob-button js-mob-open">
							<span class="mob-button__icon"></span>
						</button>
					</div>
					<div class="header__col">
						<a class="logo" href="/home/index">
							<img class="logo__image" src="/forUser/image/logo/J5Shop.png" alt="">
						</a>
					</div>
					<div class="header__col header__col_hide-mob">
						<nav class="header-nav">
							<ul class="header-nav__list">
								<li class="header-nav__item"><a class="header-nav__link" href="/home/index" >Home</a></li>
								<li class="header-nav__item js-nav-item"><a
										class="header-nav__link header-nav__link_arrow js-nav-button" href="/home/about" 
									>Pages</a>
									<div class="hide-nav js-nav-hide">

										<ul class="hide-nav__list">

											<c:if test="${!isLogin}">
												<li class="hide-nav__item"><a class="hide-nav__link" href="/home/login">Login</a></li>
												<li class="hide-nav__item"><a class="hide-nav__link" href="/home/registration">Registration</a></li>
											</c:if>
											<c:if test="${isLogin}">
												<c:if test="${admin }">
													<li class="hide-nav__item"><a class="hide-nav__link" href="/admin/index">Administrator</a></li>
												</c:if>

												<li class="hide-nav__item"><a class="hide-nav__link" href="/home/logout">Logout</a></li>
											</c:if>
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/about">About us</a></li>
											<!-- <li class="hide-nav__item"><a class="hide-nav__link" href="/home/collections">Collections</a></li> -->
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/faq">FAQ</a></li>
											<!-- <li class="hide-nav__item"><a class="hide-nav__link" href="/home/post">Post</a></li>
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/404">404</a></li> -->
										</ul>
									</div></li>
								<li class="header-nav__item js-nav-item"><a
										class="header-nav__link header-nav__link_arrow js-nav-button" href="/home/shop"
									>Shop</a>
									<div class="hide-nav js-nav-hide">
										<ul class="hide-nav__list">
											<c:if test="${isLogin}">
												<li class="hide-nav__item"><a class="hide-nav__link" href="/home/my_profile">Profile</a></li>
											</c:if>
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/shop">Catalog</a></li>
											<!-- 	<li class="hide-nav__item"><a class="hide-nav__link" href="/home/product_page">Product page</a></li> -->
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/cart">Cart</a></li>
											<!-- 	<li class="hide-nav__item"><a class="hide-nav__link" href="/home/checkout-1">Checkout 1</a></li>
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/checkout-2">Checkout 2</a></li>
											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/checkout-3">Checkout 3</a></li> -->
<!-- 											<li class="hide-nav__item"><a class="hide-nav__link" href="/home/wishlist">Wishlist</a></li> -->
										</ul>
									</div></li>
								<!-- <li class="header-nav__item"><a class="header-nav__link" href="/home/blog">Blog</a></li> -->
								<li class="header-nav__item"><a class="header-nav__link" href="/home/contacts">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div class="header__right">
				<ul class="user-nav">
					<li class="user-nav__item"><a class="user-nav__link" href="#">
							<span class="user-nav__icon user-nav__icon_1"></span>
						</a></li>
					<li class="user-nav__item"><a class="user-nav__link" href="/home/my_profile">
							<span class="user-nav__icon user-nav__icon_2"></span>
						</a></li>
<!-- 					<li class="user-nav__item"><a class="user-nav__link" href="/home/wishlist">
							<span class="user-nav__icon user-nav__icon_3"></span>
							<span class="user-nav__text">0</span>
						</a></li> -->
					<li class="user-nav__item"><a class="user-nav__link" href="/home/cart">
							<span class="user-nav__icon user-nav__icon_4"></span>
							<span class="user-nav__text">${count}</span>
						</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>
<!-- HEADER END -->