<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View UseCase Non-Designer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
  <link href = "bootstrap-theme/css/style.css" rel="stylesheet">
  <script src="jquery-3.1.1.min.js"></script>

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
                <div class="col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">Active Projects  <span class="badge">4</span></div>
                        <div class="panel-body">
                            <form action="" method="">
                            <div class="table-responsive table-bordered">          
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>Last Updated</th>
                                        <th>Status</th>
                                        <th>Select</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="danger">
                                        <td>1</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                        <td><input class="form-check-input" type="radio" name="Viewusecasetemplate" id="select" value="template1"></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                        <td><input class="form-check-input" type="radio" name="Viewusecasetemplate" id="select" value="template1"></td>
                                    </tr> 
                                    <tr>
                                        <td>3</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                        <td><input class="form-check-input" type="radio" name="Viewusecasetemplate" id="select" value="template1"></td>
                                     </tr>   
                                     <tr>
                                         <td>4</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>   
                                        <td><input class="form-check-input" type="radio" name="Viewusecasetemplate" id="select" value="template1"></td>
                                     </tr>
                                    
                                    </tbody>
                                </table>
                                <button class="btn btn-primary btn-md btn-block" name="" id="" >Select UseCase Template</button>
                                </form>
                                </div>
                                
                        </div>
                    </div>
                
                    <div class="panel panel-default">
                        <div class="panel-heading">In-active Projects  <span class="badge">3</span></div>
                        <div class="panel-body">
                            <div class="table-responsive table-bordered">          
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>Last Updated</th>
                                        <th>status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr class="clickable-row" href="">
                                        <td>1</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                        
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>15678</td>
                                        <td>02/13/2017</td>
                                        <td>open</td>
                                    </tr>
                                    </tbody>
                                </table>
                                </div>
                                
                        </div>
                    </div>
                </div>
            </div>
         </div>
         
</body>
</html>