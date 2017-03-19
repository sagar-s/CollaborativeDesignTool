<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Choose Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
  <link href = "bootstrap-theme/css/style.css" rel="stylesheet">
  

</head>
<body>
	  <nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Collaborative Design Tool</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="#">Home</a></li>
			<li><a href="#">Profile</a></li>
			<li><a href="#">Features</a></li>
			<li><a href="#">Explore</a></li>
		</ul>
		<form class="navbar-form navbar-right" action="logout" method="POST">
			<button type="submit" class="btn btn-default">
			<span class="glyphicon glyphicon-log-out"></span> Logout
			</button>
		</form>
	</div>
	</nav>
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-6 col-xs-offset-3">
              <h1 style="font-family:Arial; font-style: bold">Create Project</h1><br><br>
              <div class="inactive well well-md col-xs-3 ">
                <i class="fa fa-pencil" aria-hidden="true"></i>
                Description
                </div>
                <div class="now-active well well-md
                col-xs-3 " >
                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                UseCase
                </div>
                <div class="inactive well well-md
                col-xs-3 " >
                <i class="fa fa-users" aria-hidden="true"></i>
                 Team 
                </div>
                <div class="inactive well well-md
                col-xs-3 ">
                <i class="fa fa-check-square-o" aria-hidden="true"></i> 
                Policy
                </div>
				<h3 class="alloc "style:"font-family:Arial; margin:50px">Select Use Case Template</h3>
                
            <form  action="addroles" method="POST">
              <div class="radio-inline">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="usecasetemplate" id="inlineRadio1" value="usecasetemplate1">
                  <img src="bootstrap-theme/Images/USECASE1.JPEG" class="img-rounded" onclick="" alt="Responsive image">
                </label>
                </div>
                <div class="radio-inline">
                <label class="form-check-label">
                  <input class="form-check-input" type="radio" name="usecasetemplate" id="inlineRadio2" value="usecasetemplate2">
                  <img src="bootstrap-theme/Images/USECASE2.JPEG" class="img-rounded" onclick="" alt="Responsive image">
                </label>
                </div>
              <button type="submit" class="btn btn-md btn-block " style="background:black; margin-top:10px; color:white"
							name="submit" value="Next">Add Collaborators</button>
            </form>
          </div>
        </div>
      </div>
</body>
</html>
