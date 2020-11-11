<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>chart page</title>
		
		<c:import url="../template/bootstrap.jsp"></c:import>
		<c:import url="../template/totalCSS.jsp"></c:import>
		
	</head>
	
	<body id="page-top">
	
		<!-- navigation template -->
		<c:import url="../template/navTemplate.jsp"></c:import>
		
		<div id="wrapper">
			<c:import url="../template/barTemplate.jsp"></c:import>
			<div id="content-wrapper">
				<div class="card mb-3">
					<div class="card-header">
						chart test
					</div>
					<div class="card-body">
						<canvas id="myChart"></canvas>
					</div>
				</div>
			</div>
		</div>
		
		<!-- template option -->
		<c:import url="../template/javascriptTemplate.jsp"></c:import>

				<script type="text/javascript">
				
			var ctx = document.getElementById('myChart').getContext('2d');
			var chart = new Chart(ctx, {
			    // The type of chart we want to create
			    type: 'line',
	
			    // The data for our dataset
			    data: {
			        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
			        datasets: [{
			            label: 'My First dataset',
			            backgroundColor: 'rgb(255, 99, 132)',
			            borderColor: 'rgb(255, 99, 132)',
			            data: [0, 10, 5, 2, 20, 30, 45]
			        }]
			    },
	
			    // Configuration options go here
			    options: {}
			});	
		</script>

	</body>
	
</html>