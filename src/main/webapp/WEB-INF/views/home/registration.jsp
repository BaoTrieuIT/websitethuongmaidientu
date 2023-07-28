<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  

 --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Registration</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item"><a class="breadcrumbs__link" href="index">Home</a></li>
							<li class="breadcrumbs__item">Registration</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image"
						data-bg="https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
					></div>
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
			<div class="login-page__banner"
				data-bg="https://images.unsplash.com/photo-1508615174679-3eaad52c4d16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
			></div>
			<div class="login-page__main">
				<form:form action="/home/registration" modelAttribute="item" method="GET"
					
				>
					<div class="login-form login-form_reg">
						<div class="login-form__top">
							<h2 class="login-form__title">Register now</h2>
							<p class="login-form__text">For your convenience, we have made it possible to register
								via social networks.</p>
							<span class="badge badge-danger">${message }</span>
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
						<div class="login-form__cols">
						
							<div class="login-form__col">
								<form:input path="username" type="text" cssClass="text-input"
									placeholder="Enter your username"
								/>
								<form:errors path="username" cssClass="badge badge-danger" />
							</div>
							<div class="login-form__col">
								<form:input path="fullname" type="text" cssClass="text-input" placeholder="Enter full name" />
								<form:errors path="fullname" cssClass="badge badge-danger" />
							</div>
						</div>
						<div class="login-form__cols">
							<div class="login-form__col">
								<form:input path="email" type="email" cssClass="text-input" placeholder="Enter your email" />
								<form:errors path="email" cssClass="badge badge-danger" />
							</div>
						</div>
						<span class="login-form__label">Password</span>
						<div class="login-form__cols">
							<div class="login-form__col">
								<form:input path="password" type="password" cssClass="text-input"
									placeholder="Enter your password"
								/>
								<form:errors path="password" cssClass="badge badge-danger" />
							</div>
							<div class="login-form__col">
								<input class="text-input" type="password" name="repassword" placeholder="Confirm password">
								<c:if test="${!isValid}">
									<span class="badge badge-danger">${error_pass}</span>
								</c:if>

							</div>
						</div>
						<span class="login-form__label">Image</span>
						<div class="login-form__rows">
							<div class="login-form__row">
								<div class="file-upload">
									<div class="image-upload-wrap">
										<form:input path="photo" type="file" class="file-upload-input"
											onchange="readURL(this);" accept="image/*"
										/>

										<div class="drag-text">
											<h3>Drag and drop a file or select add Image</h3>
										</div>
									</div>
									<div class="file-upload-content">
										<img class="file-upload-image" src="#" alt="your image" name="photo" />
										<div class="image-title-wrap">
											<button type="button" onclick="removeUpload()" class="remove-image">
												Remove
												<span class="image-title">Uploaded Image</span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<form:errors path="photo" cssClass="badge badge-danger" />
						<div class="login-form__bottom">
							<div class="login-form__col">
								<div class="login-form__checkbox checkbox">
									<label class="checkbox__label">
										<input class="checkbox__input" type="checkbox">
										<span class="checkbox__icon"></span>
										<span class="checkbox__text">
											I agree with the
											<a href="#">Privacy policy</a>
										</span>
									</label>
								</div>
							</div>
							<div class="login-form__col">
								<span class="login-form__small-text">
									Already have an account? Then&nbsp;
									<a href="login">log&nbsp;in</a>
								</span>
							</div>
						</div>
						<button class="login-form__button button" type="submit" formaction="/home/registration/regis">
							<span class="button__text" >Check in</span>
						</button>
					</div>
				</form:form>
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