<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
	<title>Your Status</title>
	
	<!-- reference our style sheet -->

	 <link rel='stylesheet' href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2 style="text-align:center;margin:20px">Your Status</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">	
			<table class="table table-bordered table-striped table-dark" style="text-align:center">
				<tr>
					<th colspan="2">Status</th>
					<th>Full Name</th>
					<th>Nationality</th>
					<th>Date Of Birth</th>
				</tr>
				
				<!-- loop over and print our applications -->
							
					<c:set var = "tempReport" value="${applyForPassportVerification}"/>
			 
						
								
						<tr>
					
							<c:if test="${tempReport.status == 0}">
							<td colspan="2" style="color:white">Pending Review </td>
						</c:if>	
						<c:if test="${tempReport.status == 1}">
							<td colspan="2" style="color:green"> Under Scrutiny</td>
						</c:if>
						<c:if test="${tempReport.status == 2}">
							<td colspan="2" style="color:red"> Rejected</td>
						</c:if>
						
						
						<td> ${tempReport.fullname} </td>
						<td> ${tempReport.nationality} </td>
						<td> ${tempReport.dob} </td>			
						</tr>
				
						
			</table>
				
		</div>
	<p>
			<a href="${pageContext.request.contextPath}/home">Back to Home</a>
		</p>
	</div>
	

</body>

</html>


