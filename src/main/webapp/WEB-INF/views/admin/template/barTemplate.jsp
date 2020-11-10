<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!-- Sidebar -->
 <ul class="sidebar navbar-nav">
 
   <li class="nav-item active">
     <a class="nav-link" href="index.html">
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
     
       <h6 class="dropdown-header">Report</h6>
       <a class="dropdown-item" href="#">Store</a>
       <a class="dropdown-item" href="#">Visitor</a>
       <a class="dropdown-item" href="#">Download</a>
       
       <div class="dropdown-divider"></div>
       <h6 class="dropdown-header">Staff Management</h6>
       <a class="dropdown-item" href="#">Work time</a>
       <a class="dropdown-item" href="#">Staff inquiry</a>
       
     </div>
   </li>
   
   <li class="nav-item">
     <a class="nav-link" href="charts.html">
       <i class="fas fa-fw fa-chart-area"></i>
       <span>Charts</span></a>
   </li>
   
   <li class="nav-item">
     <a class="nav-link" href="tables.html">
       <i class="fas fa-fw fa-table"></i>
       <span>Tables</span></a>
   </li>
   
 </ul>
   