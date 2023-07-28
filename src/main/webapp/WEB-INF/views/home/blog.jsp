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
					<h1 class="inner-top__title">Blog</h1>
					<div class="breadcrumbs">
						<ul class="breadcrumbs__list">
							<li class="breadcrumbs__item"><a class="breadcrumbs__link" href="#">Home</a></li>
							<li class="breadcrumbs__item">Blog</li>
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

	<!-- BEGIN BLOG -->
	<div class="blog-page wrapper">
		<div class="inner-blog">

			<div class="blog-nav tabs-nav js-line">
				<ul class="blog-nav__list tabs-nav__list tabs-nav__list_left">
					<li class="tabs-nav__item js-tabs-item js-line-item active"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-1">All</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-2">Fashion</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-3">NEW
							collections</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-4">Women
							collection</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-5">Men
							collection</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-6">Fashion
							trends</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-7">Lifestyle</a></li>
					<li class="tabs-nav__item js-line-item js-tabs-item"><a class="tabs-nav__link js-line-link js-tabs-link" href="#blog-tab-8">Сulture</a></li>
				</ul>
				<div class="tabs-nav__line js-line-element"></div>
			</div>

			<!-- BEGIN TAB 1-->
			<div class="blog-tab js-tabs-content active" id="blog-tab-1">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 1 END -->

			<!-- BEGIN TAB 2-->
			<div class="blog-tab js-tabs-content" id="blog-tab-2">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 2 END -->

			<!-- BEGIN TAB 3-->
			<div class="blog-tab js-tabs-content" id="blog-tab-3">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 3 END -->

			<!-- BEGIN TAB 4-->
			<div class="blog-tab js-tabs-content" id="blog-tab-4">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 4 END -->

			<!-- BEGIN TAB 5-->
			<div class="blog-tab js-tabs-content" id="blog-tab-5">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 5 END -->

			<!-- BEGIN TAB 6-->
			<div class="blog-tab js-tabs-content" id="blog-tab-6">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 6 END -->

			<!-- BEGIN TAB 7-->
			<div class="blog-tab js-tabs-content" id="blog-tab-7">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 7 END -->

			<!-- BEGIN TAB 8-->
			<div class="blog-tab js-tabs-content" id="blog-tab-8">

				<div class="blog">
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Fashion trends in 2020: style, colors, accessories</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The most popular brand that people use in USA</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Updating the wardrobe: what clothes to buy first</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">The main clothing trends fall-winter 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">How to choose a dress for a special occasion?</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
					<article class="short-post">
						<div class="short-post__all">
							<a class="short-post__image-link" href="post">
								<div class="short-post__image" data-bg="https://via.placeholder.com/555x300"></div>
							</a>
							<div class="short-post__row">
								<div class="short-post__cell">
									<div class="short-post__bg">
										<div class="short-post__content">
											<div class="short-post__title-wrap">
												<h4 class="short-post__title">
													<a class="short-post__link" href="post">Women's fashion: how not to dress in 2020</a>
												</h4>
											</div>
											<span class="short-post__date">Aug 02, 2020</span>
											<a class="short-post__more read-more" href="post">read more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</article>
				</div>

			</div>
			<!-- TAB 8 END -->

			<div class="page-nav">
				<div class="page-nav__col">
					<a class="page-nav__button prev-button" href="#"></a>
				</div>
				<div class="page-nav__col">
					<ul class="page-nav__list">
						<li class="page-nav__item active"><a class="page-nav__link" href="#">1</a></li>
						<li class="page-nav__item"><a class="page-nav__link" href="#">2</a></li>
						<li class="page-nav__item"><a class="page-nav__link" href="#">3</a></li>
					</ul>
				</div>
				<div class="page-nav__col">
					<a class="page-nav__button next-button" href="#"></a>
				</div>
			</div>

		</div>
	</div>
	<!-- BLOG END -->

</main>
<!-- MAIN END -->