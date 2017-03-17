<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project Creation Page</title>
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
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">Explore</a></li>
                    </ul>
                        <form class="navbar-form navbar-right"  >
                            <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search Design Tool">
                            </div>
                            <button type="submit" class="btn btn-default">Logout</button>
            
                    </form>
                    
                </div>
                </nav>
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-6 col-xs-offset-3">
              <h1 style="font-family:Arial; font-style: bold">Create Project</h1><br><br>
              <div class="now-active well well-md col-xs-3 ">
                <i class="fa fa-pencil" aria-hidden="true"></i>
                Description
                </div>
                <div class="inactive well well-md
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
                
                <h3 class="alloc "style:"font-family:Arial; margin:50px">Add Description</h3><br>

                <form  action="choosetemplate" method="POST">
              <div class="form-group ">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label" style="font-family: Arial"> Project name </label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                </div>
                <div class="form-group ">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label" style="font-family: Arial"> Project Description </label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="10" cols="30"></textarea>
                  </div>

                </div>
                  <button type="submit" class="btn btn-warning btn-md btn-block " name="submit" value="Next">Create Project</button>
            </form>


            
          </div>

        </div>
    </div>
    </body>
</html>
