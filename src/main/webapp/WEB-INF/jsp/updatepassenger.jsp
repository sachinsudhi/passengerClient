<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Passenger Edit Page</title>
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

				<h1>Enter Passenger Details</h1>
				<hr>
				<form:form method="POST" action="${contextPath}/Passengers/updated"
					modelAttribute="passenger">
					<div class="form-group text-left ">
						<label class="control-label " for="lname"> Passenger ID </label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="profileId" class="form-control" id="lname"
								name="lname" type="Integer" placeHolder="Passenger profile ID" />
						</div>
					</div>

					<div class="form-group text-left ">
						<label class="control-label " for="fname"> First Name </label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="firstName" class="form-control" id="fname"
								name="fname" type="text" placeHolder="First Name" />
						</div>
					</div>


					<div class="form-group text-left ">
						<label class="control-label " for="lname"> Last Name</label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="lastName" class="form-control" id="lname"
								name="lname" type="text" placeHolder="Last Name" />
						</div>
					</div>

					<div class="form-group">
	

					<div class="form-group text-left ">
						<label class="control-label " for="email"> Email</label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-envelope"></span>
							</div>
							<form:input path="emailId" class="form-control" id="email" name="email" type="text"
								placeHolder="E-mail Address" />
						</div>
					</div>

					<div class="form-group text-left ">
						<label class="control-label" for="company">Address</label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-folder-close"></span>
							</div>
							<form:input path="address" class="form-control" id="adrs" name="address"
								type="text" placeHolder="Address st name, city, ZIP" />
						</div>
					</div>

					<div class="form-group text-left ">
						<label class="control-label" for="dname">Telephone number </label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="telNo" class="form-control" id="dname" name="dname" type="text"
								placeHolder="Telephone number" />
						</div>
					</div>

					<div class="form-group text-left ">
						<label class="control-label" for="poncheck">Password
						</label>
						<div class="input-group">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</div>
							<form:input path="password" class="form-control" id="ps" name="pswd"
								type="text" placeHolder="Password" />
						</div>
					</div>


					<div>
						<button class="btn btn-primary btn-lg btn-warning" type="submit">Save</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>
