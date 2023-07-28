<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Meta -->
<meta name="format-detection" content="telephone=no">
<meta id="Viewport" name="viewport" content="initial-scale=1, maximum-scale=1, minimum-scale=1">
<meta name="it-rating" content="it-rat-cd303c3f80473535b3c667d0d67a7a11" />
<meta name="cmsmagazine" content="3f86e43372e678604d35804a67860df7" />
<!-- END META -->
<title>Fashion - Main page</title>
<!-- font - icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400&family=Raleway:wght@400;500;600;700;800;900&display=swap"
	rel="stylesheet"
>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<!-- MDB -->
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" /> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- STYLE -->
<style>
.loaded .load-icon {
	display: block;
}

.loaded * {
	-webkit-transition: none;
	-ms-transition: none;
	transition: none;
}

.load-icon {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	display: none;
	z-index: 99999;
	position: absolute;
	top: 0;
	left: 0;
	background: #fff;
}

.load-icon:before {
	content: "";
	width: 64px;
	height: 64px;
	margin: -32px 0 0 -32px;
	position: absolute;
	top: 50%;
	left: 50%;
	background: url(/forUser/assets/img/loader.gif) no-repeat left top;
}
</style>

<!-- END STYLE -->

<!-- LINK CSS - IMAGE -->
<link rel="stylesheet" type="text/css" href="/forUser/assets/css/main.css">
<link rel="icon" type="image/x-icon" href="/forUser/assets/img/favicon.ico">
<link rel="stylesheet" href="/forUser/assets/css/upload_image.css" />
</head>
<body class="loader">
	<div class="load-icon"></div>

	<div class="page-container">

		<tiles:insertAttribute name="header" />

		<tiles:insertAttribute name="navmobile" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />

	</div>
	<script type="text/javascript">
	$(document).ready(function() {
	    var rangeSlider = $("#range-slider");
	    var minPriceInput = $("#min-price");
	    var maxPriceInput = $("#max-price");

	    rangeSlider.slider({
	        // Cấu hình slider theo nhu cầu của bạn
	        // ...
	        // Sự kiện thay đổi giá trị phạm vi
	        change: function(event, ui) {
	            var minPrice = ui.values[0];
	            var maxPrice = ui.values[1];
	            minPriceInput.val(minPrice);
	            maxPriceInput.val(maxPrice);
	        }
	    });
	});
	</script>
	<!-- SCRIPT -->
	<script src="/forUser/assets/js/libs/jquery-3.5.1.min.js"></script>
	<script src="/forUser/assets/js/libs/jquery-migrate-1.4.1.min.js"></script>
	<script src="/forUser/assets/js/components/slick.js"></script>
	<script src="/forUser/assets/js/components/syotimer.js"></script>
	<script src="/forUser/assets/js/main.js"></script>
	<script src="/forUser/assets/js/components/inputmask.js"></script>
	<script src="/forUser/assets/js/components/formstyler.js"></script>
	<script src="/forUser/assets/js/components/wnumb.js"></script>
	<script src="/forUser/assets/js/components/nouislider.js"></script>
	<script src="/forUser/assets/js/components/selectize.js"></script>
	<script src="/forUser/assets/js/active_side-nav.js"></script>
	<!-- <script src="/forUser/assets/js/range.js"></script> -->
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<!-- 	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
	></script> -->
	<script src="/forUser/assets/js/upload_image.js"></script>
	<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<!-- END SCRIPT -->
</body>
</html>