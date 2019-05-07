<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Merienda" rel="stylesheet">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
    <!--
    //edit this message to say what you want
    var message = "Function Disabled";

    function clickIE() {
        if (document.all) {
            alert(message);
            return false;
        }
    }
    function clickNS(e) {
        if (document.layers || (document.getElementById && !document.all)) {
            if (e.which == 2 || e.which == 3) {
                alert(message);
                return false;
            }
        }
    }
    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN);
        document.onmousedown = clickNS;
    }
    else {
        document.onmouseup = clickNS;
        document.oncontextmenu = clickIE;
    }

    document.oncontextmenu = new Function("return false")
    // -->
</script>
</head>
<body style="background-image: linear-gradient(to right, #083850 , #20a0b8);">
 <nav class="navbar navbar-expand-md    " style="background-color:#1a2930">
   
    <a class="navbar-brand " href="#" style="text-decoration:none;color:white;"><i class="fas fa-tint" style="color:red; font-size:30px;"></i></a>
    <div class="navbar-header">

            <a class="navbar-brand " style="text-decoration:none;color:white; font-family: 'Merienda', cursive; letter-spacing:1px; font-size:24px;" href="First.jsp">lifeline</a>
        </div>
    <button class="navbar-toggler  custom-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar" style="border-color:#c8271e; ">
        <div class="toggle"></div>
             <div class="toggle"></div>
              <div class="toggle"></div>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
        <ul class="navbar-nav" id="navlist">
            <li class="nav-item" >
                <a class="nav-link" id="anchar" style="text-decoration:none;color:white"
                    href="page1.jsp"><b>Donate Blood</b></a>
            </li>
           
            <li class="nav-item" >
                <a class="nav-link" style="text-decoration:none;color:white" id="anchar"
                    href="Three.jsp"><b>Get Blood</b></a>
            </li>
            
             
            <%  
                            if(session.getAttribute("profile")!=null)
                            { %>
                            <li class=" nav-item dropdown" style="padding-left:5px;">
                <a class="dropdown-toggle nav-link" data-toggle="dropdown" style="text-decoration:none;color:white;" href="#">
                    <i class="fa fa-user-circle" style="font-size:20px;padding-right:5px"></i><b><%=session.getAttribute("profile")%> </b></a>
                <ul class="dropdown-menu dropdown-menu-right">
                   <li>
                   
                        <a class="dropdown-item" href="changepassword.jsp"style="">
                          <span >ChangePassword</span> </a>
                    </li>
                  
                  
                    <li>
                        <a class="dropdown-item" href="First.jsp"style="color:">
                           <span >Log Out</span> </a>
                    </li>
                   
                </ul>
            </li> <%
                            }
                            %>
             
            
           
        </ul>
    </div>
</nav>
<div class="container">
<div class="col-sm-0 col-md-12 col-lg-12 col-xl-0"><br><br><br><br></div>
	<div class="row ">
	<div class="col-sm-2"></div>
	<div class= "col-sm-10">
	<form action="Account" method="post" >
		<input type="hidden"  name="command" value="changepassword"/>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					
					<hr class="hr-text" data-content="Change Password">
				</div>
			</div>
			<br>
			
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="name" style="color: white; font-size: 20px;">Name</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							
							<input type="text"name="username" class="form-control" required placeholder="username"/>
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
					<label for="password" style="color::white; font-size: 20px;">Change Password</label>
				</div>
				<div class="col-md-6">
					<div class="form-group has-danger">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							
							<input type="password" name="password" class="form-control" required placeholder="Change Password"/>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
					<span class="text-danger align-middle"> <%
                if(session!=null)
                {
                            if(session.getAttribute("errormsg")!=null)
                            { %>
                            	<%=session.getAttribute("errormsg")%>
                          <% session.setAttribute("errormsg", null);  }}
                            %>
						</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 field-label-responsive">
					<label for="password" style="collor:white; font-size: 20px;">Confirm Password</label>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							
							<input type="password" name="confirmpassword" class="form-control" required placeholder="Confirm Password"/>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<center><button type="submit" class="btn btn-info">
						 Submit
					</button></center>
				</div>
			</div>
			
		</form>
	
	</div>
	
	
	
	</div>

</div>
</body>
</html>