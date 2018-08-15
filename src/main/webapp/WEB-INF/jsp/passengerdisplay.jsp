<!DOCTYPE html>
<html lang="en">
<head>
<title>Passenger Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Custom styles for this template -->
<link href="resources/css/global.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="http://imcsgroup.net/img/logos/home/imcs-group-grey-logo.png">IMCS</a>
			</div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<ul class="nav">
					<li><a href="${contextPath}/Passengers">Add Passenger</a></li>
					<li><a href="${contextPath}/Passengers/loadmenu">Load
							Passenger</a></li>
					<li><a href="${contextPath}/Passengers/update">Update
							Passenger</a></li>
					<li><a href="${contextPath}/Passengers/deletemenu">Delete
							Passenger</a></li>
				</ul>
			</div>
			<div class="col-sm-8 text-left">
				<h1>Passenger Details</h1>
				<table>
					<tr>
						<td>Passenger ID:</td>
						<td>${passenger.profileId}</td>
					</tr>
					<tr>
						<td>Passenger Name:</td>
						<td>${passenger.firstName}${passenger.lastName}</td>
					</tr>
					<tr>
						<td>Email:</td>
						<td>${passenger.emailId}
					</tr>
					<tr>
						<td>Address:</td>
						<td>${passenger.address}
					</tr>
					<tr>
						<td>Telephone no:</td>
						<td>${passenger.telNo}</td>
					</tr>
					<tr>
					
				</table>
				<hr>

			</div>
		</div>
	</div>

</body>
</html>
