<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">main</div>
                    <a class="nav-link" href="${pageContext.request.contextPath}/admin/adminIndex">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Main page
                    </a>
                    
                    <!-- Store order -->
                    <div class="sb-sidenav-menu-heading">Store</div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseStores" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Store
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseStores" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="#">Orders</a>
                            <a class="nav-link" href="#">Staff List</a>
                            <a class="nav-link" href="#">Customer</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        MyPage
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/notice/noticeList">Notice</a>
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseMyPage" aria-expanded="false" aria-controls="pagesCollapseError">
                                MyPage
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseMyPage" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href=#">Profile</a>
                                    <a class="nav-link" href="#">Time Table</a>
                                    <a class="nav-link" href="#">Suggestions</a>
                                </nav>
                            </div>
                        </nav>
                    </div>
                    
                    <!-- store report -->
                    <div class="sb-sidenav-menu-heading">Management</div>
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCharts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Charts
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
					<div class="collapse" id="collapseCharts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="#">Order</a>
                            <a class="nav-link" href="#">Customer</a>
                            <a class="nav-link" href="#">Download</a>
                        </nav>
                    </div>
                    
                    <a class="nav-link" href="#">
                        <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                        Staff Management
                    </a>
                </div>
            </div>
            <div class="sb-sidenav-footer">
                <div class="small">Logged in as:</div>
                login member name
            </div>
        </nav>
    </div>