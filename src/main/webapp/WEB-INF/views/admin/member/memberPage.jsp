<%@page import="com.starbucks.sw4.admin.tables.member.AdminMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Starbucks Coffee Korea :: 매장 직원현황</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/commonCSS.jsp"></c:import>
		
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/jquery-ui.min.css">
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/boardList.css">
		<link rel="stylesheet" type="text/css" href="/sw4/resources/admin/css/memberPage.css">
	 	
		<style type="text/css">
			/*background-color: #006633;*/
			#member-list > tr{
				cursor: pointer;
			}
			#update-btn{
				font-size: 0.8rem;
				color: white;
				padding: 0.35rem 0.45rem;
				border-radius: 4px;
				border: none;
				background-color: #006633;
				cursor: pointer;
			}
			#update-btn-area{
				margin: 0.6rem 0px 0px;
				float: left;
				visibility: hidden;
			}
			#btn-area{
				margin-top: -0.5rem;
			}
			#staff-info-area{
				margin-top: 0.2rem;
			}
			#staff-info-table{
				font-size: 0.8rem;
				text-align: left;
				line-height: 1rem;	
			}
			#staff-update-area{
				background-color: #FFFFFF;
			}
			#ttmp{
				position: relative;
			}
			#staff-info-column{
				width: 3rem;
				font-size: 0.8rem;
				padding: 0.5rem 0px;
				font-weight: bold;
				text-align: center;
			}
			#staff-info-column1{
				width: 4rem;
				font-size: 0.8rem;
				padding: 0.5rem 0px;
				padding-left: 0.5rem;
				font-weight: bold;
				text-align: left;
			}
			#staff-work-time-area{
				width:100%;
				position: relative;
				border: 1px solid #EAEAEA;
			}
			#staff-info-left{
				float: left;
				width: 30%;
			}
			#staff-info-right{
				width: 68%;
			}
			.staff-work-info-area{
				margin: 0.2rem;
				font-size: 0.8rem;
				position: relative;
				display: inline-block;
			}
			.work-time{
				width: 4.8rem;
				margin: 0px 0.3rem;
				text-align:center;
				background-color: yellow;
			}
			/* div 내에 양쪽 정렬을 하고 싶다면 하나로 감싼 부모 css display를 flex로 하고, justify-content를 space-between으로 둘 것 */
			#popup-btn-area{
				width: 100%;
				margin: 1rem 0px 0.2rem;
				display: flex;
				padding-left: 0.2rem;
				padding-right: 0.4rem;
				justify-content: space-between;
			}
			#pop-cancle-btn{
				color: #A6A6A6;
				border: 1px solid #A6A6A6;
				background-color: #FFFFFF;
			}
			/* #006633 */
			#pop-update-btn{
				color: white;
				border: 1px solid #006633;
				background-color: #006633;
			}
			#store-pop-update-btn{
				color: white;
				border: 1px solid #006633;
				background-color: #006633;
			}
			.popup-btn{
				font-size: 0.9rem;
				cursor: pointer;
				padding: 0.5rem 1.2rem;
				border: 1px solid red;
				border-radius: 3px;
				text-align: center;
			}
			#update-form{
				margin-top: 1rem;
			}
			#work-store-txt{
				font-size: 0.8rem;
				width: 7rem;
				border: none;
			}
			.staff-info-row{
				text-align: left;
			}
			#store-search{
				font-size: 0.8rem;
				cursor: pointer;
			}
			.info-width{
				width: 10rem;
			}
			#store-search{
				padding: 0.2rem;
				color: white;
				background-color: #D5D5D5;
				border-radius: 3px;
			}
			#store-search-area{
				margin: 1rem 0px 0.5rem;
			}
			#store-select-area{
				padding: 0.2rem;
				border: 1px solid #D5D5D5;
			}
			#store-select-scroll{
				width: 100%; height: 240px;
				overflow:auto; 
				padding-right: 0.2rem;
			}
			.select-store{
				width: 100%; height: 50px;
				margin: 0.2rem 0px;
				border: 1px solid #F6F6F6;
				line-height: 50px;
				cursor: pointer;
				padding-left: 0.5rem;
			}
			#store-select-info{
				background-color:#F6F6F6;
				color: #5D5D5D;
				font-size: 0.83rem;
				padding: 0.2rem;
			}
			#search-store-txt{
				width:50%;
			}
			#store-search-btn{
				border: 1px solid #D5D5D5;
				background-color: #D5D5D5;
			}
			.store-choose{
				margin-right: -0.3rem;
			}
			#store-store-name{
				width: 70%;
				margin-left: 0.2rem;
			}
			#store-store-sido-name{
				width: 28%;
				padding-right: 0.5rem;
				border-right: 1px solid #D5D5D5;
			}
			#sido-select-area{
				font-size: 0.9rem;
				padding-left: 0.5rem;
				border: 0.2px solid #D5D5D5;
				cursor: pointer;
			}
			#sidoDropdown{
				width: 5rem;
			}
			#select-type{
				margin-right: 0rem;
			}
		</style>
	</head>
	
	<body class="sb-nav-fixed">
	
		<c:import url="../template/navigation.jsp"></c:import>
		<div id="layoutSidenav">
			
			<!-- template -->
			<c:import url="../template/sidebar.jsp"></c:import>
			<div id="layoutSidenav_content">
				
				<main>
					
					<div class="container-fluid">
						<h1 class="mt-4">매장 직원 리스트</h1>
						<div class="breadcrumb mb-4">
							<span id="login-staff-info">${login.name}</span>님이 근무하시는&nbsp;<span id="login-staff-info">${login.storeDTO.storeName}</span>&nbsp;매장 근로자 리스트 입니다. 개인정보 보호를 위해 STAFF의 상세 정보는 제한됩니다.
						</div>
					</div>
					
					<div class="container-fluid">
						<div id="store-info">
							<table class="table table-bordered" id="store-info-table">
								<tr>
									<td id="store-image" rowspan="4"></td>
									<td colspan="4" id="store-title">근무지 정보</td>
								</tr>
								<tr class="store-row">
									<td id="store-column-name">이름</td>
									<td class="store-row-data" id="name">${login.name}</td>
									<td id="store-column-name">직급</td>
									<td class="store-row-data" id="type">
										<c:choose>
											<c:when test="${login.type eq 2}">Staff</c:when>
											<c:when test="${login.type eq 3}">Manager</c:when>
											<c:otherwise>Admin</c:otherwise>
										</c:choose>
									</td>
								</tr>
								<tr class="store-row">
									<td id="store-column-name">근무 매장</td>
									<td class="store-row-data" id="work-store">${store.storeName}</td>
									<td id="store-column-name">근무인원</td>
									<td class="store-row-data"><span id="work-store-count">${storeMember}</span> 명</td>
								</tr>
								<tr class="store-row">
									<td id="store-column-name">매장 주소</td>
									<td colspan="3" id="doro-addr">${store.doro_addr}</td>
								</tr>
							</table>
						</div>

					</div>
					
					<div class="container-fluid" id="btn-area">
						<c:if test="${login.type eq 4}">
							<div id="update-btn-area">
								<form action="#" id="update-btn-frm" method="POST">
									<button id="update-btn" type="button">정보 수정</button>
								</form>
							</div>
						</c:if>
						<div id="select-area">
							<ul class="navbar-nav ml-auto ml-md-0" id="drop" role="type">
								<a class="nav-link dropdown-toggle" id="typeDropdown"
									href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									<i class="fas fa-user fa-fw" id="icon-type"></i><span id="select-type">직급 선택</span>
								</a>
								<div class="dropdown-menu dropdown-menu-righ">
									<span class="dropdown-item" title="0" id="staff">All</span>
					                <span class="dropdown-item" title="2" id="staff">Staff</span>
					                <span class="dropdown-item" title="3" id="manager">Manager</span>
								</div>
							</ul>
						</div>
					</div>
					
					<div class="container-fluid" id="table-area">
	
						<table class="table"  width="100%">
							<thead>
								<tr>
									<th id="table-num-size">번호</th>
									<th id="table-info-size" colspan="2">직원 요약 정보</th>
									<th id="table-writer-size">직급</th>
									<th id="table-date-size">입사일</th>
									<th id="table-hit-size">성별</th>
								</tr>
							</thead>
							<tbody id="member-list">

							</tbody>
						</table>
						
					</div>
					
					<div class="container-fluid" id="">
						<button class="btn btn-info" id="more">view more</button>
					</div>

					<div id="staff-update-area" style="display:none;" role="dialog">
	
					</div>
					
					<div id="store-info-area" style="display:none;" class="modal" role="dialog">
		
						
					</div>
			
				</main>
	
				<c:import url="../template/footer.jsp"></c:import>
				
			</div>		

		</div>		
		
		<!-- script template -->
		<c:import url="../template/javascript.jsp"></c:import>
		<script src="/sw4/resources/admin/js/jquery-ui.min.js"></script>
		<script type="text/javascript">
		
			var curPage = 1;
			var searchType = 0;
			
			var type = 0;
			var loginType = ${login.type};
			
			var search = "";
			var staffNum;
			var staffStoreCode;
			var staffStoreName;
			var staffId;
			var staffInsertId;
			var staffInsertNum;
			
			$("#search-btn").attr("type","button");
			$("#search-frm").attr("action","#");
			
			getList()
			typeSelect(type)

			$(document).ready(function(){
				
				var noWidth = window.screen.width;
				var noHeight = window.screen.height;
				
				$("#update-btn").click(function(){
					
					// 변경 불필요 -------------------------------------------------------
					var x = noWidth/4.3;
					var y = noHeight/7.3;
					
					$.ajax({
						url:"./memberUpdate",
						type:"get",
						data:{
							num:staffNum
						},
						success:function(data){
							
							$("#staff-update-area").empty();
							$("#staff-update-area").append(data);
							
							// store dialog -------------------------------------------
							$("#store-search").click(function(){
								if (loginType == 4) {
									x = noWidth/3.1; 
									y = noHeight/5;
									
									var sidoTxt = "";
									var storeSearch = "";
									
									getStoreList(sidoTxt,storeSearch);
									
									function storeSearch(sidoTxt){
										storeSearch = $("#search-store-txt").val();
										getSidoList(sidoTxt, storeSearch);
									}
									
									function getSidoList(sidoTxt, search){
										getStoreList(sidoTxt,search)
									}
									
									var beforeChk=0;
									var storeChk=0;
									var countChk=0;
									
									function getStoreList(sidoName, search){
	
										$.ajax({
											url:"../store/storeList",
											type:"GET",
											data:{
												sidoName:sidoName,
												search:search
											},
											success: function(data){
												
												$("#store-info-area").empty();
												$("#store-info-area").append(data);
												$("#search-store-txt").val(storeSearch);
												
												$(".sido").click(function(){
													sidoTxt = $(this).attr("title");
													getSidoList(sidoTxt,storeSearch);
												})
												
												if(sidoName == ''){
													sidoName = "전체";
												}
												
												$(".sido-type").text(sidoName);
												$(".select-store").click(function(){
													
													storeChk = $(this).index();
													
													if(countChk > 0){
														$(".select-store:eq("+beforeChk+")").css('background-color','white');
														$(".select-store:eq("+beforeChk+")").css('border','none');
														beforeChk = storeChk;
													} else {
														beforeChk = $(this).index();
													}
													
													$(this).attr("check", "Y");
													$(this).css("background-color","#F6F6F6");
													$(this).css("border","1px solid #006633");
													
													staffStoreCode = $(this).attr("title");
													staffStoreName = $(this).attr("name");
														
													countChk++;
	
												})
												
												$("#store-search-btn").click(function(){
													storeSearch = $("#search-store-txt").val();
													getSidoList(sidoTxt, storeSearch)
												})
												
												$("#search-store-txt").keydown(function(key){
													if(key.keyCode == 13){
														storeSearch = $("#search-store-txt").val();
														getSidoList(sidoTxt, storeSearch)
													}
												});
												
												$(".store-choose").click(function(){
													$("#work-store-txt").val(staffStoreName);
													$("#work-store-txt").attr("title",staffStoreCode);
													$("#pop-update-btn").text("수정");
													$("#pop-update-btn").attr("title","수정");
													$("#store-info-area").dialog('close');
												});
												
												$(".store-cancle").click(function(){
													$("#store-info-area").dialog('close');
												});
												
											}
										});
									}
									
									$("#store-info-area").dialog({
										modal:true,
										width:'50%',
										height:'500',
										resizable:false,
										open:function(){
											$(this).parent().offset ({top: y,left: x } );
										}
									});
								} else {
									alert("접근 권한이 없습니다.");
								}
							})
							// ------------------------------------------------------------
							var btnTxt = $("#update-btn").attr("title");
							initBtn(btnTxt)
							
							function initBtn(btnTxt){
								if(btnTxt == '입력'){
									$("#pop-update-btn").text("입력");
									$(".work-time").attr("readonly",false)
								} else {
									$(".work-time").attr("readonly",true);
									$("#pop-update-btn").text("수정하기");
								}
							}
							
							// adminMember table : time table Y,N -------------------------
							// update-btn text 값에 따라 수정하기와 입력하기가 나뉨
							
							$("#pop-update-btn").click(function(){	
								
								var update_btn_chk = $("#pop-update-btn").text();
								
								if(update_btn_chk == "수정하기"){
									
									init("수정하기", true)
									var url = "./memberUpdate";
									
									$("#pop-update-btn").text("수정");
									$(".work-time").attr("readonly",false)
									
								} else if(update_btn_chk == "수정"){
										
									var staffNum = $("#staff-info-num").attr("title");
									var staffAdminNum = $("#staff-info-admin-num").attr("title");
									var staffStoreCode = $("#work-store-txt").attr("title");
									
									var sun = $("#sunStart").val()+"-"+$("#sunEnd").val();
									var mon = $("#monStart").val()+"-"+$("#monEnd").val();
									var tue = $("#tueStart").val()+"-"+$("#tueEnd").val();
									var wed = $("#wedStart").val()+"-"+$("#wedEnd").val();
									var thu = $("#thuStart").val()+"-"+$("#thuEnd").val();
									var fri = $("#friStart").val()+"-"+$("#friEnd").val();
									var sat = $("#satStart").val()+"-"+$("#satEnd").val();
	
									// 출퇴근 시간 update
									$.ajax({
										url: "./memberUpdate",
										type: "post",
										data:{
											num:staffNum,
											adminNum:staffAdminNum,
											storeCode:staffStoreCode,
											sun:sun,
											mon:mon,
											tue:tue,
											wed:wed,
											thu:thu,
											fri:fri,
											sat:sat
										},
										success: function(result){
											alert("수정이 완료되었습니다.")
											location.href="./memberList";
										},
										error: function(){
											alert("수정을 실패하였습니다.")
										}
									});
	
								} else if (update_btn_chk == "입력"){
	
									init("입력", false)
									// $.post 실행 후 닫기
									
									var url = "./memberWrite"
									
									var sun = $("#sunStart").val()+"-"+$("#sunEnd").val();
									var mon = $("#monStart").val()+"-"+$("#monEnd").val();
									var tue = $("#tueStart").val()+"-"+$("#tueEnd").val();
									var wed = $("#wedStart").val()+"-"+$("#wedEnd").val();
									var thu = $("#thuStart").val()+"-"+$("#thuEnd").val();
									var fri = $("#friStart").val()+"-"+$("#friEnd").val();
									var sat = $("#satStart").val()+"-"+$("#satEnd").val();

									$.ajax({
										url: url,
										type: "post",
										data: {
											id:staffInsertId,
											num:staffInsertNum,
											sun:sun,
											mon:mon,
											tue:tue,
											wed:wed,
											thu:thu,
											fri:fri,
											sat:sat
										},
										success: function(result){
											alert("작성을 성공하였습니다.");
											location.href="./memberList";
										},
										error: function(result){
											alert("작성에 실패하였습니다.")
										}
									})
	
								}
								
							})
							// if문 종료
							
							$("#pop-cancle-btn").click(function(){
								$("#staff-update-area").dialog('close');
							});
							
						}
					})

					$("#staff-update-area").dialog({
						modal:true,
						width:'65%',
						height:'600',
						resizable:false,
						open:function(){
							$(this).parent().offset ({top : y, left: x } );
						}
					});

				})				
			})
			
			function init(btnText, readOnly){
				$("#pop-update-btn").text(btnText);
				$(".work-time").attr("readonly",readOnly)
			}

			function showList(id,timeTable, num, name, type, storeName, doro_addr, staffCount, storeCode){
				
				$("#name").text(name)
				$("#update-btn").css("visibility","visible")
				
				if (type == 2){
					type = "Staff"
				} else if (type == 3){
					type = "Manager"
				} else {
					type = "Admin"
					$("#update-btn").css("visibility","hidden")
				}
				$("#type").text(type)
				
				$("#work-store").text(storeName)
				
				$("#doro-addr").text(doro_addr)
				$("#work-store-count").text(staffCount)
				
				staffId = id;
				staffInsertId = id;
				
				staffNum = num;
				staffInsertNum = num;
				staffStoreCode = storeCode;
				
				if(timeTable == 'Y'){
					$("#update-btn").text("정보 수정")
					$("#update-btn").attr("title","수정")
				} else if(timeTable == 'N'){
					$("#update-btn").text("정보 입력")
					$("#update-btn").attr("title","입력")
				}
				
			}
			
			$("#search-btn").click(function(){
				curPage = 1;
				search = $("#search").val();
				$("#member-list").empty();
				getList()
			})
			
			$("#more").click(function(){
				curPage++;
				getList();
			})
			
			$(".dropdown-item").click(function(){
				searchType = $(this).attr("title");
				curPage = 1;
				
				if (searchType == 0){
					search = "";	
				}
				
				$("#member-list").empty();
				getList();
			})
			
			function getList(){
				
				$.ajax({
					url:"./getMemberList",
					type:"GET",
					data:{
						curPage:curPage,
						searchType:searchType,
						search:search
					},
					success:function(data){
						$("#member-list").append(data);
					}
				});
				
			}
			
			function typeSelect(type){
				
				var text = "직급 선택"
				
				if(type == 2){
					text = "Staff"
				} else if (type == 3){
					text = "Manager"
				}
				
				$("#select-type").text(text)
				
			}
		
			$(".dropdown-item").click(function(){
				type = $(this).attr("title")
				typeSelect(type)
			})
			
		</script>
		
	</body>
	
</html>