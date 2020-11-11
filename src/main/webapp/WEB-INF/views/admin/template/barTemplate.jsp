<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!-- 대쉬보드 아이콘: fas fa-fw fa-tachometer-alt -->
<!-- Sidebar -->
<div class="nav">
	 <ul class="sidebar navbar-nav">
	 
	   <li class="nav-item active">
	   	 <div class="sb-sidenav-menu-heading">Main</div>
	     <a class="nav-link" href="${pageContext.request.contextPath}">
	       <i class="fas fa-fw fa-tachometer-alt"></i>
	       <span>Dashboard</span>
	     </a>
	   </li>
	   
	   <li class="nav-item dropdown">
	     <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	       <i class="fas fa-fw fa-folder"></i>
	       <span>Store Management</span>
	     </a>
	     <div class="dropdown-menu" aria-labelledby="pagesDropdown">
	       <h6 class="dropdown-header">Staff</h6>
	       <div class="dropdown-divider"></div>
	       <a class="dropdown-item" href="#">Work time</a>
	       <a class="dropdown-item" href="#">Staff inquiry</a>
	       
	     </div>
	   </li>
	   
	   <li class="nav-item dropdown">
	     <a class="nav-link dropdown-toggle" href="#"
	     	id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	       <i class="fas fa-fw fa-chart-area"></i>
	       <!-- fas fa-fw fa-chart-area -->
	       <span>Store Report</span></a>
	     <div class="dropdown-menu" aria-labelledby="pagesDropdown">   
	       <h6 class="dropdown-header">Chart</h6>
	       <div class="dropdown-divider"></div>
	       <a class="dropdown-item" href="${pageContext.request.contextPath}/chart/chartPage">Store</a>
	       <a class="dropdown-item" href="#">Visitor</a>
	       <a class="dropdown-item" href="#">Download</a>
	     </div>
	     
	   </li>
	   
	   <li class="nav-item">
	     <a class="nav-link" href="tables.html">
	       <i class="fas fa-fw fa-table"></i>
	       <span>Tables</span></a>
	   </li>
	   
	 </ul>
</div>   