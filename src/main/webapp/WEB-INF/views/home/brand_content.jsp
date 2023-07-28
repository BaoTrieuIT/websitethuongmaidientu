<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="inner-catalog">
	<c:forEach var="item" items="${page.content}">
		<article class="short-item">
			<div class="short-item__all">
				<a class="short-item__image-bg" href="product_page">
					<img class="short-item__image" src="/forUser/image/products/${item.image}" alt="">
				</a>
				<div class="short-item__top">
					<div class="short-item__cols">
						<div class="short-item__col">
							<span class="item-tag item-tag_red">Sale</span>
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
				<span class="short-item__old-price">$${item.price }</span>
			</div>
		</article>
	</c:forEach>
</div>