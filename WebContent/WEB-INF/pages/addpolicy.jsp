<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Policy page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstra-theme/css/font-awesome.min.css" rel="stylesheet">
  <link href = "bootstrap-theme/css/style.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                    <a class="navbar-brand" href="#">Design Tool</a>
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
              <div class="inactive well well-md col-xs-3 ">
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
                <div class="now-active well well-md
                col-xs-3 ">
                <i class="fa fa-check-square-o" aria-hidden="true"></i> 
                Policy
                </div>
                
                <h3 class="alloc "style:"font-family:Arial; margin:50px">Choose Policy</h3><br>
                <form  action="createproject" method="POST">
                    <div class="panel-group">
                        <div class="panel panel-default">
                        <div class="panel-heading">Policy 1</div>
                        <div class="panel-body">
                            <p class="jumboHeading">Finish to Start: The predecessor team has to finish before successor team starts.<br>
                            <a data-toggle = "modal" href="#myModal" style="text-decoration: underline; color:blue"> Allot Time & select</a>
                        </div>
                        </div>
                        <div class="panel panel-default">
                        <div class="panel-heading">Policy 2</div>
                        <div class="panel-body">
                            <p class="jumboHeading">Start to Start: All the teams can start working simultaneously.<br>
                            <a data-toggle = "modal" href="#myModal"style="text-decoration: underline; color:blue"> Allot Time & select</a></div>
                        </div>
                        <div class="panel panel-default">
                        <div class="panel-heading">Policy 3</div>
                        <div class="panel-body">
                            <p class="jumboHeading">Start To Finish: The predecessor team has to start before successor team finishes.<br>
                            <a data-toggle = "modal" href="#myModal" style="text-decoration: underline; color:blue"> Allot Time & select</a>
                            </div>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-warning btn-md btn-block " name="submit" value="Next">Submit Project</button>
                </form>
                <!-- Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">
                        
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Allot Time </h4>
                            </div>
                            <div class="modal-body">
                            <form action="" method="">
                                <label for="ProjectName" class="jumboHeading col-2 col-form-label">DAYS</label>
                                    <div class="col-2">
                                    <Label>Development Manager</Label>
                                        <input type="number" id="example-text-input" name="days">
                                    </div>
                                    <div class="col-2">
                                    <Label>Solution Manager</Label>
                                        <input type="number" id="example-text-input" name="days">
                                    </div>
                                    <div class="col-2">
                                    <Label>Architect</Label>
                                        <input type="number" id="example-text-input" name="days">
                                    </div>
                                    <div class="col-2">
                                    <Label>QA</Label>
                                        <input type="number" id="example-text-input" name="days">
                                    </div>
                                    </div>
                                    </p>
                                </label>

                            </form>
                            </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                        
                        </div>
                    </div>
          
        </div>
      </div>
    </div>
</body>
</html>
