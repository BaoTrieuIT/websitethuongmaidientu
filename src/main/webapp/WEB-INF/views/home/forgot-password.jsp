<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- BEGIN MAIN -->
<main class="main">
	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Forgot password</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="index">Home</a>
							</li>
							<li class="breadcrumbs__item">Forgot password</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image" style="width: 636px"
						data-bg="https://img.freepik.com/premium-vector/forgot-password-account-login-web-page-protection-security-key-access-system-smartphone-computer-flat-vector-illustration_2175-1425.jpg?w=900"
					></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN LOGIN -->
	<div class="login-page">
		<div class="login-page__all">
			<div class="login-page__banner"
				data-bg="https://img.freepik.com/free-vector/safe-concept-illustration_114360-5200.jpg?w=996&t=st=1686575906~exp=1686576506~hmac=270919bc37fe0a2c80fbeb5e0ef9b70a0cb688369729b316620920c55dd4e494"
			></div>
			<div class="login-page__main">
				<form action="forgot-password" method="post" modelAttribute="acc">
					<div class="login-form">
						<div class="login-form__top">
							<h2 class="login-form__title">Forgot password</h2>
							<!-- 							<p class="login-form__text">For your convenience, we have made it possible to log in via social networks.</p> -->
						</div>
						<!-- <ul class="socials-nav">
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-1" href="#"></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-2" href="#"></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-3" href="#"></a></li>
							<li class="socials-nav__item"><a class="socials-nav__link socials-nav__link_icon-4" href="#"></a></li>
						</ul> -->

						<input class="text-input" type="text" name="username" placeholder="Enter your username">
						<input class="text-input" type="email" name="email" placeholder="Enter your email">
						<div>
							<span class="badge badge-warning">${message}</span>
						</div>

						<button class="login-form__button button" type="submit">
							<span class="button__text">Send</span>
						</button>
						<div class="login-form__bottom mt-2">
							<div class="login-form__col">
								<span class="login-form__small-text">
									<span>Don't have account </span>
									<a href="registration">Sign up ?</a>
								</span>
							</div>
						</div>
						<!-- <button class="login-form__button button" type="submit">
							<span class="button__text">
								<a href="registration" class="text-white">Sign up</a>
							</span>
						</button> -->
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