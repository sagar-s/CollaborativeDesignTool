<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Roles</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">

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
        </div>
        </div>
                <div class="col-xs-8 col-xs-offset-2" style="margin-top:30px">
                    <div class="table-responsive table-bordered">
						<table class="table">
							<thead>
								<tr>
									<th># Policy</th>
                                    <th> Name</th>
									<th>Description</th>
									<th>Select</th>
								</tr>
							</thead>
							<tbody>
								<tr >
									<td>1</td>
									<td>Start to Start</td>
									<td><p>All the Teams can start working simutaneously.</p></td>
									<td><input type="radio" name="policyname" onclick="javascript:theForm()"
								            id="inlineRadio1" value="StartToStart"></td>

								</tr>
								<tr>
									<td>2</td>
									<td>Finish to Start</td>
									<td><p>The predecessor team has to finish before successor team starts.</p></td>
									<td><input type="radio" name="policyname" onclick="javascript:theForm()"
								                    id="inlineRadio2" value="FinishToStart"></td>
								</tr>
								<tr>
									<td>3</td>
									<td>All in One</td>
									<td><p>All start at same time and finish at same time.</p></td>
									<td><input type="radio" name="policyname" onclick="javascript:theForm()"
								            id="inlineRadio3" value="AllInOne"></td>
								</tr>
							</tbody>
						</table>
					</div>
                    <div style="margin-top:10px">
                        <form style="visibility:hidden" id="timeAllotmentForm">
                            <div class ="table-bordered">	
                              <table class="table">					
							    <tr>
                                    <th>Team </th>
                                    <th>Days</th>
                                    <th>Minutes</th> 
								<tr>
                                    <td>Devlopment Manager: </td>
                                    <td><input type="number" name="devdays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="devminutes" value="0" min"0" max="60"></td>
                                </tr>
								<tr>
                                    <td>Solution Manager: </td>
                                    <td><input type="number" name="solndays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="solnminutes" value="0" min"0" max="60"></td>
                                </tr>
								<tr>
                                    <td>Architect:</td>
                                    <td> <input type="number" name="ardays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="arminutes" value="0" min"0" max="60"></td>
                                </tr>
								<tr>
                                    <td>QA: </td>
                                    <td><input type="number" name="qadays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="qaminutes" value="0" min"0" max="60"></td>
                                </tr>
							</div>
                            </table>
                                    
                    </div>
                    <button type="submit" class="btn btn-md btn-block " style="background:black; margin-top:10px; color:white"
							name="submit" value="Submit">Submit Project</button>
                </form>
                           
            
                        
          
        </div>
      </div>
    </div>
    <script type="text/javascript">
        
        function theForm(){
            if(document.getElementById('inlineRadio1').checked){
                document.getElementById('timeAllotmentForm').style.visibility='visible';
            }
            else if(document.getElementById('inlineRadio2').checked){
                document.getElementById('timeAllotmentForm').style.visibility='visible';
            }
            else if(document.getElementById('inlineRadio3').checked){
                document.getElementById('timeAllotmentForm').style.visibility='visible';
            }
            else{
                document.getElementById('timeAllotmentForm').style.visibility='hidden';
            }
        }
    </script>
</body>
</html>