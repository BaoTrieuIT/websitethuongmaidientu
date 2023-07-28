<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 

 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
<!-- BEGIN MAIN -->
<main class="main">

	<!-- BEGIN INNER TOP -->
	<div class="inner-top">
		<div class="inner-top__main wrapper">
			<div class="inner-top__cols">
				<div class="inner-top__left">
					<h1 class="inner-top__title">Shop</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="#">Home</a>
							</li>
							<li class="breadcrumbs__item">Shop</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image rounded" data-bg="https://i.pinimg.com/564x/0d/f4/93/0df493f98966e765e9f2bfc999ba74ef.jpg"></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->
	<!-- BEGIN SHOP -->
	<div class="shop wrapper">
		<div class="shop__cols">

			<!-- BEGIN LEFT COLUMN -->
			<aside class="shop__left">
				<form action="/home/searchBrand" method="post">
					<div class="search-form">
						<input class="search-form__input" type="text" name="keywords" value="${keywords}" placeholder="Search">
						<button class="search-form__button" type="submit"></button>
					</div>
				</form>

				<div class="filters">
					<section class="widget js-slidedown">
						<h2 class="widget__title widget__title_hide-mob">Categories</h2>
						<a class="widget__button js-slidedown-button" href="javascript:void(0);">Categories</a>
						<div class="widget__hide js-slidedown-hide">
							<ul class="side-nav">
								<li class="side-nav__item ">
									<a class="side-nav__link " href="shop">All</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link" href="brand?field=1000">Watch</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1001">Laptop</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1002">Camera</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1003">Smartphone</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1004">Flycam</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1005">Robot clean</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1006">Tivi</a>
								</li>
								<li class="side-nav__item ">
									<a class="side-nav__link " href="brand?field=1007">Tablet</a>
								</li>
							</ul>
						</div>
					</section>
					<form action="/home/price" method="post">
						<section class="widget js-slidedown">
							<h3 class="widget__title widget__title_hide-mob">Price</h3>
							<a class="widget__button js-slidedown-button" href="javascript:void(0);">Price</a>
							<div class="widget__hide js-slidedown-hide">
								<div class="range">
									<div class="range__slider" id="range-slider"></div>
								</div>
							</div>
						</section>

						<button class="apply-button button">
							<span class="button__text">Apply filter</span>
						</button>
					</form>
				</div>
			</aside>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<div class="shop__right">

				<div class="shop-panel">
					<div class="shop-panel__left">
						<span class="shop-panel__text">
							There are <b>${totalItems}</b> products in&nbsp;this&nbsp;category
						</span>
					</div>
					<div class="shop-panel__right">
						<div class="shop-panel__select select select_1">
							<select class="js-formstyler">
								<option>Option</option>
								<option>By Name</option>
								<option>By Price</option>
							</select>
						</div>
					</div>
				</div>
				<!-- BEGIN TAB 1  -->
				<div id="content-container">
					<div class="inner-catalog">
						<c:forEach var="item" items="${page.content}">
							<article class="short-item">
								<div class="short-item__all">
									<a class="short-item__image-bg" href="product_page/detail/${item.id}">
										<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
									</a>
									<div class="short-item__top">
										<div class="short-item__cols">
											<div class="short-item__col">
												<span class="item-tag item-tag_red">New</span>
											</div>
											<div class="short-item__col">
												<button class="heart-button js-toggle-active"></button>
											</div>
										</div>
									</div>
									<h4 class="short-item__title">
										<a class="short-item__link" href="product_page">${item.name }</a>
									</h4>
									<!-- <span class="short-item__price">$25.99</span> -->
									<span class="short-item__price">$${item.price}</span>
								</div>
							</article>
						</c:forEach>
					</div>
				</div>
				<!-- END TAB 1 -->
				<!-- <script type="text/javascript">
					$(document).ready(function() {
						// Gắn sự kiện "click" cho các phần tử side-nav__link
						$('.side-nav__link').click(function(event) {
							event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

							// Lấy đường dẫn từ thuộc tính href của side-nav__link được nhấp vào
							var url = $(this).attr('href');
							console.log(url)
							// Gửi yêu cầu AJAX để tải nội dung mới
							loadContent(url);
						});

						function loadContent(url) {
							// Gửi yêu cầu AJAX với đường dẫn URL
							$.ajax({
								url : url,
								type : 'GET',
								success : function(response) {
									// Cập nhật nội dung của trang với nội dung mới
									$('#content-container').html();
								},
								error : function(xhr, status, error) {
									// Xử lý lỗi (nếu có)
								}
							});
						}
					});
				</script> -->
				<div class="page-nav">
					<c:if test="${totalItems > 6}">

						<c:choose>
							<c:when test="${search}">
								<div class="page-nav__col">
									<a class="page-nav__button prev-button" href="/home/searchBrand?p=${page.number-1}"></a>
								</div>
								<div class="page-nav__col">
									<ul class="page-nav__list">
										<c:forEach var="pageNumber" begin="0" end="${page.totalPages - 1}">
											<li class="page-nav__item">
												<a class="page-nav__link" href="/home/searchBrand?p=${pageNumber}">${pageNumber}</a>
											</li>
										</c:forEach>
									</ul>
								</div>
								<div class="page-nav__col">
									<a class="page-nav__button next-button" href="/home/searchBrand?p=${page.number+1}"></a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="page-nav__col">
									<a class="page-nav__button prev-button" href="/home/brand?p=${page.number - 1 }"></a>
								</div>
								<div class="page-nav__col">
									<ul class="page-nav__list">
										<c:forEach var="pageNumber" begin="0" end="${page.totalPages - 1}">
											<li class="page-nav__item">
												<a class="page-nav__link" href="/home/brand?p=${pageNumber}">${pageNumber}</a>
											</li>
										</c:forEach>
									</ul>
								</div>
								<div class="page-nav__col">
									<a class="page-nav__button next-button" href="/home/brand?p=${page.number + 1 }"></a>
								</div>
							</c:otherwise>
						</c:choose>
					</c:if>
				</div>

			</div>
			<!-- RIGHT COLUMN END -->

		</div>

		<div class="mob-items js-to-2"></div>

	</div>
	<!-- SHOP END -->

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
