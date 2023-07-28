<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>  
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 --%>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index">
		<div class="sidebar-brand-icon rotate-n-15">
			<i class="fas fa-laugh-wink"></i>
		</div>
		<div class="sidebar-brand-text mx-3">J5 Admin</div>
	</a>
	<!-- Divider -->
	<hr class="sidebar-divider">



	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePagesController" aria-expanded="true" aria-controls="collapsePages">
			<i class="fas fa-fw fa-folder"></i>
			<span>Pages Controller</span>
		</a>
		<div id="collapsePagesController" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/admin/account">Account Controller</a>
				<a class="collapse-item" href="/admin/category">Category Controller</a>
				<a class="collapse-item" href="/admin/order">Order Controller</a>
				<a class="collapse-item" href="/admin/product">Product Controller</a>
			</div>
		</div>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider">
	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
			<i class="fas fa-fw fa-folder"></i>
			<span>Pages Statistic</span>
		</a>
		<div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<a class="collapse-item" href="/admin/table_bestseller">Best sale</a>
				<a class="collapse-item" href="/admin/table_categoryStatistic">Category Statistic</a>
				<a class="collapse-item" href="/admin/table_reportbyDate">Report by Date</a>
				<a class="collapse-item" href="/admin/table_revenue">Revenue</a>
				<a class="collapse-item" href="/admin/table_topCustomer">Top customer</a>
			</div>
		</div>
	</li>


	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>



</ul>
<!-- End of Sidebar -->