<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- BEGIN MAIN -->
<main class="main ">

	<!-- BEGIN FIRST SCREEN -->
	<div class="first-screen ">
		<div class="first-screen__left">
			<div class="first-screen__mob-cols">
				<div class="first-screen__mob-col">
					<div class="slider-count">
						<span class="slider-count__text js-main-count">
							<span>1</span>
							/3
						</span>
					</div>
				</div>
				<div class="first-screen__mob-col">
					<ul class="first-screen__socials side-socials">
						<li class="side-socials__item"><a class="side-socials__link" href="#">FB</a></li>
						<li class="side-socials__item"><a class="side-socials__link" href="#">TW</a></li>
						<li class="side-socials__item"><a class="side-socials__link" href="#">INS</a></li>
						<li class="side-socials__item"><a class="side-socials__link" href="#">PT</a></li>
					</ul>
				</div>
				<div class="first-screen__mob-col js-to-1"></div>
			</div>
		</div>
		<div class="first-screen__center">
			<div class="main-slider">
				<div class="main-slider__list-wrap">
					<div class="main-slider__list js-main-slider loaded">
						<div class="main-slider__item js-slide active">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<b>new</b> collection
											</span>
											<h2 class="main-slider__title">
												meet New <br>HeadSets week
											</h2>
											<a class="main-slider__button button" href="shop">
												<span class="button__text">Shop now</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" style="width: 639px"
												data-bg="https://i.pinimg.com/564x/92/c0/f7/92c0f79bcf1be48fbeeaf9c174c3f53d.jpg"
											></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item js-slide">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<b>new</b> collection
											</span>
											<h2 class="main-slider__title">
												meet New <br>Watch week
											</h2>
											<a class="main-slider__button button" href="shop">
												<span class="button__text">Shop now</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" style="width: 579px; height: 96%;"
												data-bg="https://i.pinimg.com/736x/ca/f4/fe/caf4fee44832c4d0b178a4f52d9a823a.jpg"
											></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-slider__item js-slide">
							<div class="main-slider__max">
								<div class="main-slider__row">
									<div class="main-slider__cell">
										<div class="main-slider__content">
											<span class="main-slider__subtitle category-subtitle">
												<b>new</b> collection
											</span>
											<h2 class="main-slider__title">
												meet New <br>Camera week
											</h2>
											<a class="main-slider__button button" href="shop">
												<span class="button__text">Shop now</span>
											</a>
										</div>
										<div class="main-slider__image-wrap">
											<div class="main-slider__image" style="width: 551px;"
												data-bg="https://i.pinimg.com/564x/ee/29/52/ee29528f24e6f8fd61f1302835f60c26.jpg"
											></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="main-slider__bg-wrap">
					<img class="main-slider__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-first-screen.svg" alt=""
					>
					<div class="scroll-down">
						<span class="scroll-down__icon"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="first-screen__right js-from-1">
			<div class="slider-dots dots-1 js-main-dots"></div>
			<div class="slider-arrows arrows-1 js-main-arrows js-content-1"></div>
		</div>
	</div>
	<!-- FIRST SCREEN END -->


	<!-- BEGIN PRODUCTS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<b>new</b> collections
			</span>
			<h3 class="main-block__title">Featured products</h3>
		</div>
		<div class="products-nav tabs-nav js-line">
			<ul class="tabs-nav__list">
				<li class="tabs-nav__item js-tabs-item js-line-item active"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-1"
					>All</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-2"
					>Watch</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-3"
					>Laptop</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-4"
					>Camera</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-5"
					>Smartphone</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-6"
					>Flycam</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-7"
					>Robot clean</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-8"
					>Tivi</a></li>
				<li class="tabs-nav__item js-line-item js-tabs-item"><a
						class="tabs-nav__link js-line-link js-tabs-link" href="#products-9"
					>Tablet</a></li>
			</ul>
			<div class="tabs-nav__line js-line-element"></div>
		</div>

		<!-- BEGIN TAB 1 -->
		<div class="product-tab js-tabs-content active" id="products-1">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${all.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 1 END -->

		<!-- BEGIN TAB 2 -->
		<div class="product-tab js-tabs-content " id="products-2">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${watch.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 2 END -->

		<!-- BEGIN TAB 3 -->
		<div class="product-tab js-tabs-content " id="products-3">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${lap.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 3 END -->

		<!-- BEGIN TAB 4 -->
		<div class="product-tab js-tabs-content " id="products-4">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${camera.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 4 END -->

		<!-- BEGIN TAB 5 -->
		<div class="product-tab js-tabs-content " id="products-5">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${phone.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 5 END -->

		<!-- BEGIN TAB 6 -->
		<div class="product-tab js-tabs-content " id="products-6">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${flycam.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 6 END -->

		<!-- BEGIN TAB 7 -->
		<div class="product-tab js-tabs-content" id="products-7">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${robot.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 7 END -->

		<!-- BEGIN TAB 8 -->
		<div class="product-tab js-tabs-content" id="products-8">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${tv.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 8 END -->

		<!-- BEGIN TAB 9 -->
		<div class="product-tab js-tabs-content " id="products-9">
			<div class="main-catalog">
				<div class="main-catalog__list">
					<c:forEach var="item" items="${tablet.content}">
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.id}">
									<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
								</a>
								<div class="short-item__top">
									<div class="short-item__cols">
										<div class="short-item__col">
											<span class="item-tag item-tag_green">New</span>
										</div>
										<div class="short-item__col">
											<button class="heart-button js-toggle-active"></button>
										</div>
									</div>
								</div>
								<h4 class="short-item__title">
									<a class="short-item__link" href="product_page/detail/${item.id}">${item.name}</a>
								</h4>
								<span class="short-item__price">$${item.price}</span>
							</div>
						</article>
					</c:forEach>
					<img class="main-catalog__bg"
						src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
						data-lazy="/forUser/assets/img/svg/vector-catalog.svg" alt=""
					>
				</div>
			</div>
		</div>
		<!-- TAB 9 END -->



		<div class="load-more">
			<a class="button" href="shop">
				<span class="button__text">See all products</span>
			</a>
		</div>
	</section>
	<!-- PRODUCTS END -->

	<!-- BEGIN DEAL OF THE WEEK -->
	<section class="deal-block">
		<div class="deal-block__cols">
			<div class="deal-block__col">
				<div class="deal-block__image" style="max-width: 802px; height: 714px;"
					data-bg="https://i.pinimg.com/564x/59/a4/ca/59a4ca721b965921f46210a29f205dff.jpg"
				></div>
				<div class="deal-block__content">
					<div class="deal-block__row">
						<div class="deal-block__cell">
							<span class="deal-block__subtitle category-subtitle">
								<b>deal</b> of the week
							</span>
							<h3 class="deal-block__title">
								32 Inch <br>smaller TVs
							</h3>
							<div class="timer js-timer"></div>
							<a class="deal-block__button button" href="shop">
								<span class="button__text">Shop now</span>
							</a>
						</div>
					</div>
				</div>
				<img class="deal-block__bg"
					src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
					data-lazy="/forUser/assets/img/svg/vector-deal.svg" alt=""
				>
			</div>
		</div>
	</section>
	<!-- BEGIN DEAL OF THE WEEK END -->

	<!-- BEGIN ADVANTAGES -->
	<div class="advantages wrapper">
		<div class="advantages__list">
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon"
							src="https://i.pinimg.com/564x/ef/a3/08/efa308f11bb0a41abeaa61611cff4278.jpg" alt=""
						>
					</div>
					<h4 class="advantage__title">Free Shipping</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim
						anim velit</p>
				</div>
				<img class="advantage__bg"
					src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
					data-lazy="/forUser/assets/img/svg/vector-advantages.svg" alt=""
				>
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon"
							src="https://i.pinimg.com/736x/b3/3e/45/b33e45c0fdbb2596913fbbc889b45a5e.jpg" alt=""
						>
					</div>
					<h4 class="advantage__title">24/7 Customer Service</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim
						anim velit</p>
				</div>
				<img class="advantage__bg"
					src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
					data-lazy="/forUser/assets/img/svg/vector-advantages.svg" alt=""
				>
			</article>
			<article class="advantage">
				<div class="advantage__content">
					<div class="advantage__icon-wrap">
						<img class="advantage__icon"
							src="https://i.pinimg.com/564x/c9/0b/df/c90bdfa175210e0f2e9df5b644288da3.jpg" alt=""
						>
					</div>
					<h4 class="advantage__title">Money Back Guarantee</h4>
					<div class="advantage__line"></div>
					<p class="advantage__text">Non aliqua reprehenderit reprehenderit culpa laboris nulla minim
						anim velit</p>
				</div>
				<img class="advantage__bg"
					src="data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="
					data-lazy="/forUser/assets/img/svg/vector-advantages.svg" alt=""
				>
			</article>
		</div>
	</div>
	<!-- ADVANTAGES END -->

	<!-- BEGIN BEST SELLERS -->
	<section class="main-block wrapper">
		<div class="main-block__top">
			<span class="main-block__subtitle category-subtitle">
				<b>top</b> products
			</span>
			<h3 class="main-block__title">Best sellers at Mollee</h3>
			<p class="main-block__text">Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt
				nostrud excepteur voluptate velit ipsum esse enim.</p>
		</div>
		<div class="catalog-slider js-catalog loaded">
			<div class="catalog-slider__list-wrap">
				<div class="catalog-slider__list js-catalog-carousel">
					<c:forEach var="item" items="${ bestsaler.content}">
						
						<article class="short-item">
							<div class="short-item__all">
								<a class="short-item__image-bg" href="product_page/detail/${item.product.id }">
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
									<a class="short-item__link" href="product_page/detail/${item.product.id }">${item.product.name}</a>
								</h4>
								<%-- <span class="short-item__price" id="short-item__price_${item.product.id}">$${item.product.price}</span> --%>
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

</main>
<!-- MAIN END -->