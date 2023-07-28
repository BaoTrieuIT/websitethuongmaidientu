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
<title>Insert title here</title>
<!-- font - icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" />


<!-- Boostrap -->
<!-- <link rel="stylesheet"
				href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"> -->

<!-- <script src="httxs://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script> -->
<!-- Custom fonts for this template-->
<link href="/forAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/forAdmin/css/sb-admin-2.min.css" rel="stylesheet">
<link href="https://www.eyecon.ro/bootstrap-datepicker/css/datepicker.css" rel="stylesheet">
<link rel="stylesheet" href="/forUser/assets/css/upload_image.css" />
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<!-- <link href="/forAdmin/css/styles.css" rel="stylesheet" /> -->
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
</head>
<body id="page-top">
	<div id="wrapper">
		<tiles:insertAttribute name="sidebarAdmin" />
		<div class="d-flex flex-column" id="content-wrapper">
			<div id="content">
			
			<tiles:insertAttribute name="topbarAdmin" />
				<tiles:insertAttribute name="bodyAdmin" />
			</div>

			<tiles:insertAttribute name="footerAdmin" />
		</div>
	</div>
	<tiles:insertAttribute name="scrolltopAdmin" />
	<tiles:insertAttribute name="logoutmodalAdmin" />
	<!-- Bootstrap core JavaScript-->
	<script src="/forAdmin/vendor/jquery/jquery.min.js"></script>
	<script src="/forAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/forAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/forAdmin/js/sb-admin-2.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<!-- Page level custom scripts -->
	<script src="/forUser/assets/js/upload_image.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="/forAdmin/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
	<script src="/forAdmin/js/datatables-simple-demo.js"></script>
	<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
</body>
</html>