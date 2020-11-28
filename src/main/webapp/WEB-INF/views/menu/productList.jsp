<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/common/reset.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/common/header.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/myPage/faqList.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/menu/menuList.css"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<style type="text/css">
</style>
</head>
<body>
	<c:import url="../common/header.jsp"></c:import>


	<!--subtitle-->
	<div class="ms_sb_tit_bg">
		<div class="ms_sub_tit_inner">
			<h3>${menu}</h3>
		</div>
	</div>
	<!-- subtitle end -->

	<div class="content">
		<div class="product_list">
			<dl>
				<dd>
					<!-- 포스트로 넘겨주는데에다가 같이 넘겨줘야함 -->
					<input type="hidden" title="${type}" id="menuType" />
					<ul>
						<c:forEach items="${list}" var="list">
							<li title="${list.menuCode}">
								<dl>
									<dt>
										<a data-toggle="modal" onclick="goModal(this);"><img
											src="${list.menuImage }" alt="${list.korName }"></a>
									</dt>
									<dd style="display: none;" class="price">${list.price}</dd>
									<dd style="display: none;" class="limited">${list.limited}</dd>
									<dd class="limitedStore">${list.limitedStore}</dd>
									<dd style="display: none;" class="descr">${list.descr}</dd>
									<dd class="korname">${list.korName }</dd>
								</dl>
							</li>
						</c:forEach>
					</ul>

				</dd>
			</dl>
		</div>
	</div>
	<div class="modal fade" id="layerpop">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- header -->
				<div class="modal-header">
					<!-- 닫기(x) 버튼 -->
					<button type="button" class="close" data-dismiss="modal">×</button>
					<!-- header title -->
					<h4 class="modal-title" id="pop_header"></h4>
				</div>
				<!-- body -->
				<div class="modal-body">
					<br>
					<div id="modal_img"></div>
					<div>
						<span>가격</span> | <span id="modal_price">가격</span>
					</div>
					<br>
					<div>
						<span>한정</span> | <span id="modal_limited"></span>
					</div>
					<br>
					<div>
						<span>한정매장</span> | <span id="modal_limitedStore"></span>
					</div>
					<br>
					<div>
						<span></span> <span id="modal_descr">설명</span>
					</div>
				</div>
				<!-- Footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default">주문하기</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function goModal(e) {
			console.log('clicked');

			var price = $(e).parent().parent().children('.price').text();
			var limited = $(e).parent().parent().children('.limited').text();
			var limitedStore = $(e).parent().parent().children('.limitedStore')
					.text();
			var descr = $(e).parent().parent().children('.descr').text();
			var korname = $(e).parent().parent().children('.korname').text();
			var img_src = $(e).children().attr('src');
			var img = '<img src = "'+img_src+'"/>';
			alert(limitedStore);

			$('#pop_header').html(korname);
			$('#modal_price').html(price);
			$('#modal_limited').text(limited);
			$('#modal_limitedStore').text(limitedstore);
			$('#modal_descr').html(descr);
			$('#modal_img').html(img);
			$('div.modal').modal();

			console.log(price);
			console.log(korname);

		}
		
		
		$(function(){
			$ajax({
				type : "post",
				url
			});
		});
	</script>

	<script
		src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/myPage/faq.js"></script>
</body>
</html>