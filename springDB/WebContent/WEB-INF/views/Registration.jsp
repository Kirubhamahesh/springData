 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Bitter|Vidaloka" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab" rel="stylesheet">
<style>
@media ( min-width : 768px) {
	.field-label-responsive {
		padding-top: .5rem;
		text-align: right;
	}
}
body{
font-family: 'Roboto Slab', serif;
}


.hr-text {
  line-height: 1em;
  position: relative;
  outline: 0;
  border: 0;
  color: black;
  text-align: center;
  height: 1.5em;
  opacity: 0.5;
}
.hr-text:before {
  content: '';
  background: linear-gradient(to right, transparent, black, transparent);
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  height: 1px;
}
.hr-text:after {
  content: attr(data-content);
  position: relative;
  display: inline-block;
  color: black;
  padding: 0 0.5em;
  line-height: 1.5em;
  color: white;
  background-color: black;
  font-family: 'Vidaloka', serif;
}

</style>

</head>

<body >
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item "><a class="nav-link" href="AdminHome">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item  active "><a class="nav-link"
					href="AddManager">Add Manager </a></li>
				<li class="nav-item"><a class="nav-link" href="Manager">Manager</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="Employee">Employee</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="ALeaveApprovel">Leave
						Approvel</a></li>
						<li class="nav-item">
                <a class="nav-link " href="AdminSetting">AdminSetting</a>
              </li>
			</ul>
			 <ul class="navbar-nav my-2 my-lg-0">
            <li class="nav-item dropdown " >
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"  style="font-size:20px;color:white;">
                    <i class="fa fa-user" ></i><b> <%= session.getAttribute("Aname") %> </b></a>
                 <div class="dropdown-menu dropdown-menu-right">
                  
                  <a class="dropdown-item" href="">ChangePassword</a>
                  <a class="dropdown-item" href="Alogout"><i class="fa fa-sign-out" ></i><b> Logout </b></a>
                  
                </div>
            </li>
            </ul>
		</div>
	</nav>

	<br>
	<br>
	<div class="container ">

		<form:form action="userdetails" method="post" modelAttribute="adduser">
		<form:hidden path="id"/>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<hr class="hr-text" data-content="Add Manager">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="name">Name</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-user"></i>
							</div>
							<form:input path="username" cssClass="form-control" required="required" placeholder="username"/>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
						<span class="text-danger align-middle"> 
						</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="email">E-Mail Address</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-at"></i>
							</div>
							<form:input path="email" cssClass="form-control" required="required" placeholder="you@gmail.com"/>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
						<span class="text-danger align-middle"> ${email}
						</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password">Password</label>
				</div>
				<div class="col-md-6">
					<div class="form-group has-danger">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-key"></i>
							</div>
							<form:password path="password" cssClass="form-control" required="required" placeholder="Password"/>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
						<span class="text-danger align-middle"> ${mismatch} </span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password">Confirm Password</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-repeat"></i>
								
							</div>
							<form:password path="confirmpassword" cssClass="form-control" required="required" placeholder="Password"/>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password">Role</label>
					
				</div>
				<div class="col-md-6">
					<div class="form-group">
					<div class="input-group mb-2 mr-sm-2 mb-sm-0">
						<div class="input-group-addon" style="width: 2.6rem">
								<i class="fa fa-users" aria-hidden="true"></i>
							</div>
						<form:select path="role" cssClass="form-control" >
						 <form:option value="HR Manager" label="HR Manager"/>  
        					<form:option value="Assistant Manager" label="Assistant Manager"/> 
							<form:option value="Product Manager" label="Product Manager"/>
							<form:option value="Project Manager" label="Project Manager"/>
							<form:option value="Account Manager" label="Account Manager"/>
							
						</form:select> 
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<button type="submit" class="btn btn-success">
						<i class="fa fa-user-plus"></i> Register
					</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive"></div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"></div>

						</div>
					</div>
				</div>
			</div>
		</form:form>
		</div>
		
</body>

</html>