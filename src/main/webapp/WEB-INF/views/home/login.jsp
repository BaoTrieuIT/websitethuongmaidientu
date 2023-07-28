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
					<h1 class="inner-top__title">Log In</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item"><a class="breadcrumbs__link" href="#">Home</a></li>
							<li class="breadcrumbs__item">Log In</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" data-bg="https://images.unsplash.com/photo-1432821596592-e2c18b78144f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"></div>
				</div>
			</div>
			<img class="inner-top__bg"
				src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN LOGIN -->
	<div class="login-page">
		<div class="login-page__all">
			<div class="login-page__banner" data-bg="https://images.unsplash.com/photo-1508615039623-a25605d2b022?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"></div>
			<div class="login-page__main">
				<form action="/home/login" method="POST">
					<div class="login-form">
						<div class="login-form__top">
							<h2 class="login-form__title">Login with</h2>
						</div>
						<ul class="socials-nav">
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-1"
									href="#"
								></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-2"
									href="#"
								></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-3"
									href="#"
								></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-4"
									href="#"
								></a></li>
						</ul>
						<input class="text-input" type="text" name="username" placeholder="Enter your username">
						<input class="text-input" type="password" name="password" placeholder="Enter your password">
						<div class="login-form__bottom">
							<div class="login-form__col">
								<div class="login-form__checkbox checkbox">
									<label class="checkbox__label">
										<input class="checkbox__input" type="checkbox" name="remember">
										<span class="checkbox__icon"></span>
										<span class="checkbox__text">Remember me</span>
									</label>
								</div>
							</div>
							<div class="login-form__col">
								<span class="login-form__small-text">
									<a href="forgot-password">Forgot password?</a>
								</span>
							</div>
						</div>
						<div class="text-error">
							<p class="login-form__text text-warning">${message}</p>
						</div>
						<button class="login-form__button button" type="submit">
							<span class="button__text">Log in</span>
						</button>
						<button class="login-form__button button" type="submit">
							<span class="button__text">
								<a href="registration" class="text-white">Sign up</a>
							</span>
						</button>
					</div>
				</form>
				<img class="login-page__vector"
					src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
					data-lazy="/forUser/assets/img/svg/vector-login.svg" alt=""
				>
			</div>
		</div>
	</div>
	<!-- LOGIN END -->

</main>
<!-- MAIN END -->