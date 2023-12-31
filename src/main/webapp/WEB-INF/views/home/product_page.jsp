<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
								<a class="breadcrumbs__link" href="/home/index">Home</a>
							</li>
							<li class="breadcrumbs__item">
								<a class="breadcrumbs__link" href="/home/shop">Shop</a>
							</li>
							<li class="breadcrumbs__item">${pr.name}</li>
						</ul>
					</div>
				</div>
				<div class="inner-top__right">
					<div class="inner-top__image"
						data-bg="https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80"
					></div>
				</div>
			</div>
			<img class="inner-top__bg" src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-inner-top.svg" alt=""
			>
		</div>
	</div>
	<!-- INNER TOP END -->

	<!-- BEGIN PRODUCT CARD -->
	<section class="product wrapper">
		<div class="product__cols">

			<!-- BEGIN LEFT COLUMN -->
			<div class="product__left">
				<div class="product__mob js-to-3"></div>
				<div class="product-gallery">
					<div class="product-gallery__top">
						<div class="product-gallery__cols">
							<div class="product-gallery__col">
								<div class="product-gallery__tag">
									<span class="item-tag item-tag_red">Sale</span>
								</div>
								<div class="product-gallery__tag">
									<span class="item-tag item-tag_green">New</span>
								</div>
							</div>
							<div class="product-gallery__col">
								<button class="favorite-button js-toggle-active"></button>
							</div>
						</div>
					</div>
					<div class="product-slider loaded js-product-slider dots-2 dots-left">
						<div class="product-slider__item">
							<a class="product-slider__link" href="https://via.placeholder.com/486x500" data-fancybox="gallery">
								<img class="product-slider__image" src="/forUser/image/products/${pr.image}" alt="">
							</a>
						</div>
						<!-- <div class="product-slider__item">
							<a class="product-slider__link" href="https://via.placeholder.com/486x500"
								data-fancybox="gallery"
							>
								<img class="product-slider__image" src="https://via.placeholder.com/486x500" alt="">
							</a>
						</div>
						<div class="product-slider__item">
							<a class="product-slider__link" href="https://via.placeholder.com/486x500"
								data-fancybox="gallery"
							>
								<img class="product-slider__image" src="https://via.placeholder.com/486x500" alt="">
							</a>
						</div> -->
					</div>
				</div>
			</div>
			<!-- LEFT COLUMN END -->

			<!-- BEGIN RIGHT COLUMN -->
			<div class="product__right">
				<div class="product__content">
					<div class="product__desktop js-from-3">
						<div class="product__top js-content-3">
							<h2 class="product__title">${pr.name}</h2>
							<div class="product-rating">
								<div class="product-rating__col">
									<div class="product-rating__stars rating rating_medium">
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" disabled>
										<input class="star" name="product-rating" type="radio" checked disabled>
									</div>
								</div>
								<div class="product-rating__col">
									<span class="product-rating__text">3 customers left feedback</span>
								</div>
							</div>
						</div>
					</div>
					<p class="product__text">Stylish shirt from the Fashionee collection. Model made made&nbsp;of high-quality fabric, pleasant to the touch.</p>
					<ul class="chars">
						<li class="chars__item">
							<span class="chars__name">Status:</span>
							<span class="chars__text">
								<span class="chars__status">In stock</span>
							</span>
						</li>
						<li class="chars__item">
							<span class="chars__name">Article:</span>
							<span class="chars__text">000845DZ1</span>
						</li>
					</ul>
					<div class="product__prices">
						<%-- <span class="product__price" id="short-product__price_${pr.id}">$${pr.price }</span> --%>
						<span class="product__price">$${pr.price }</span>
						<!-- <script>
									var price = ${pr.price};
									var discountedPrice = (price * 0.8).toFixed(2);
									var roundedPrice = Math.round(price * 100) / 100;

									// Xác định id của phần tử giá trị giảm giá
									var priceElementId = "short-product__price_${pr.id}";

									// Lấy phần tử có id tương ứng
									var priceElement = document.getElementById(priceElementId);

									// Gán giá trị giảm giá cho phần tử
									priceElement.innerText = discountedPrice;

									id = "short-product__price_${pr.id}"
								</script> -->
					</div>
					<!-- <ul class="size">
						<li class="size__item"><label class="size__label">
								<input class="size__input" type="radio" name="size">
								<span class="size__bg"></span>
								<span class="size__text">S</span>
							</label></li>
						<li class="size__item"><label class="size__label">
								<input class="size__input" type="radio" name="size" checked>
								<span class="size__bg"></span>
								<span class="size__text">M</span>
							</label></li>
						<li class="size__item"><label class="size__label">
								<input class="size__input" type="radio" name="size">
								<span class="size__bg"></span>
								<span class="size__text">XL</span>
							</label></li>
						<li class="size__item"><label class="size__label">
								<input class="size__input" type="radio" name="size">
								<span class="size__bg"></span>
								<span class="size__text">XXL</span>
							</label></li>
					</ul> -->
				</div>
				<%-- <div class="product-add">
					<div class="product-add__col">
						<div class="product-add__count count js-count">
							<button class="count__button count__button_minus js-count-minus"></button>
							<input class="count__input js-count-input" type="text" value="1" name="qty" maxlength="4">
							<button class="count__button count__button_plus js-count-plus"></button>
						</div>
					</div>
					<div class="product-add__col">
						<button class="product-add__button button" id="autoclosable-btn-success">
							<a href="/home/cart/add/${pr.id}" class="button__text"> Add to cart</a>
						</button>
					</div>
				</div> --%>

				<div class="product-add">
					<form action="/home/cart/addQty" method="post">
						<input type="hidden" name="id" value="${pr.id}" />
						<div class="product-add__col">
							<div class="product-add__count count js-count">
								<button class="count__button count__button_minus js-count-minus"></button>
								<input class="count__input js-count-input" type="text" value="1" name="qty" maxlength="4">
								<button class="count__button count__button_plus js-count-plus"></button>
							</div>
						</div>
						<div class="product-add__col">
							<button class="product-add__button button" id="autoclosable-btn-success">
								<span class="button__text">Add to cart</span>
							</button>
						</div>
					</form>
				</div>

			</div>
			<!-- RIGHT COLUMN END -->

		</div>
		<img class="product__vector"
			src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
			data-lazy="/forUser/assets/img/svg/vector-product.svg" alt=""
		>
	</section>
	<!-- PRODUCT CARD END -->

	<!-- BEGIN PRODUCT TABS -->
	<div class="product-tabs wrapper">

		<div class="product-nav tabs-nav js-line">
			<ul class="product-nav__list tabs-nav__list tabs-nav__list_left">
				<li class="tabs-nav__item js-tabs-item js-line-item">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#product-tab-1">Description</a>
				</li>
				<li class="tabs-nav__item js-line-item js-tabs-item active">
					<a class="tabs-nav__link js-line-link js-tabs-link" href="#product-tab-2">Reviews</a>
				</li>
			</ul>
			<div class="tabs-nav__line js-line-element"></div>
		</div>

		<!-- BEGIN DESCRIPTION -->
		<div class="product-tab js-tabs-content" id="product-tab-1"></div>
		<!-- DESCRIPTION END -->

		<!-- BEGIN REVIEWS -->
		<div class="product-tab js-tabs-content active" id="product-tab-2">
			<div class="product-tab__cols">

				<!-- BEGIN REVIEWS -->
				<div class="product-tab__left">
					<div class="reviews">
						<article class="review">
							<div class="review__top">
								<div class="review__left">
									<div class="review__cols">
										<div class="review__col">
											<h5 class="review__author">Melissa Johnson</h5>
										</div>
										<div class="review__col">
											<span class="review__date">Aug 02, 2020</span>
										</div>
										<div class="review__col">
											<div class="review__rating rating rating_small">
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" disabled>
												<input class="star" name="review-rating-1" type="radio" checked disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="review__right">
									<a class="review__button reply-button" href="#"></a>
								</div>
							</div>
							<p class="review__text">Proident voluptate adipisicing ullamco veniam incididunt laboris nulla elit et anim tempor duis dolor nostrud. Ad
								eiusmod laborum deserunt id eiusmod. Eiusmod ea aute ex et nisi exercitation eu fugiat.</p>
						</article>
						<article class="review review_reply">
							<div class="review__top">
								<div class="review__left">
									<div class="review__cols">
										<div class="review__col">
											<h5 class="review__author">Patrik Filips</h5>
										</div>
										<div class="review__col">
											<span class="review__date">Jul 12, 2020</span>
										</div>
										<div class="review__col">
											<div class="review__rating rating rating_small">
												<input class="star" name="review-rating-2" type="radio" disabled>
												<input class="star" name="review-rating-2" type="radio" disabled>
												<input class="star" name="review-rating-2" type="radio" disabled>
												<input class="star" name="review-rating-2" type="radio" disabled>
												<input class="star" name="review-rating-2" type="radio" checked disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="review__right">
									<a class="review__button reply-button" href="#"></a>
								</div>
							</div>
							<p class="review__text">Proident voluptate adipisicing ullamco veniam incididunt laboris nulla elit et anim tempor duis dolor nostrud. Ad
								eiusmod laborum deserunt id eiusmod. Eiusmod ea aute ex et nisi exercitation eu fugiat.</p>
						</article>
						<article class="review">
							<div class="review__top">
								<div class="review__left">
									<div class="review__cols">
										<div class="review__col">
											<h5 class="review__author">Oliver Jenkins</h5>
										</div>
										<div class="review__col">
											<span class="review__date">May 15, 2020</span>
										</div>
										<div class="review__col">
											<div class="review__rating rating rating_small">
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" disabled>
												<input class="star" name="review-rating-3" type="radio" checked disabled>
											</div>
										</div>
									</div>
								</div>
								<div class="review__right">
									<a class="review__button reply-button" href="#"></a>
								</div>
							</div>
							<p class="review__text">Proident voluptate adipisicing ullamco veniam incididunt laboris nulla elit et anim tempor duis dolor nostrud. Ad
								eiusmod laborum deserunt id eiusmod. Eiusmod ea aute ex et nisi exercitation eu fugiat.</p>
						</article>
					</div>
				</div>
				<!-- REVIEWS END -->

				<!-- BEGIN ADD REVIEW -->
				<div class="product-tab__right">
					<form>
						<section class="add-review">
							<div class="add-review__top">
								<h3 class="add-review__title">Leave a review</h3>
								<p class="add-review__text">Write us your impressions of&nbsp;the&nbsp;purchase</p>
								<div class="add-review__rating rating">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
									<input class="star" name="add-review-rating" type="radio">
								</div>
							</div>
							<textarea class="textarea" placeholder="Enter your feedback"></textarea>
							<input class="text-input" type="text" placeholder="Enter your name">
							<input class="text-input" type="email" placeholder="Enter your email">
							<button class="add-review__button button">
								<span class="button__text">Post a review</span>
							</button>
						</section>
					</form>
				</div>
				<!-- ADD REVIEW END -->

			</div>
		</div>
		<!-- REVIEWS END -->

	</div>
	<!-- PRODUCT TABS END -->

	<!-- BEGIN BEST SELLERS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<b>you</b> viewed
			</span>
			<h3 class="main-block__title">reviewed by you</h3>
			<p class="main-block__text">Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.</p>
		</div>
		<div class="catalog-slider js-catalog loaded">
			<div class="catalog-slider__list-wrap">
				<div class="catalog-slider__list js-catalog-carousel">
					<c:forEach var="item" items="${ bestsaler.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.product.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.product.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_red">Sale</span>
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.product.id}">${item.product.name}</a>
								</h4>

								<%-- <span class="short-item__price" id="short-item__price_${item.product.id}"></span> --%>
								<span class="short-item__price">$${item.product.price}</span>
							</div>
						</article>
					</c:forEach>

				</div>
			</div>
			<div class="catalog-slider__cols">
				<div class="catalog-slider__col">
					<button class="prev-button js-catalog-prev"></button>
				</div>
				<div class="catalog-slider__col dots-2 js-catalog-dots"></div>
				<div class="catalog-slider__col">
					<button class="next-button js-catalog-next"></button>
				</div>
			</div>
			<div class="load-icon"></div>
			<img class="catalog-slider__bg"
				src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
				data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
			>
		</div>
	</section>
	<!-- BEST SELLERS END -->

</main>
<!-- MAIN END -->
