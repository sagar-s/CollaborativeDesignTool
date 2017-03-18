<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Template 1</title>
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
            <form action="choosetemplate" method="POST">
              <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">ID</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                </div>
                <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Title</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Description</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="5"></textarea>
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Primary Actor</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Pre-conditions:</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="5"></textarea>
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Post-conditions:</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="5"></textarea>
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Frequency of Use</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Status</label>
                  <div class="radio">
					  <label><input type="radio" name="optradio">Open</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio">Pending Review</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio" disabled>Close</label>
					</div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Owner </label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Priority</label>
                  <div class="col-10">
                    <div class="radio">
					  <label><input type="radio" name="optradio">P1-Critical</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio">P2-High</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio">P3-Medium</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio">P4-Low</label>
					</div>
                  </div>
                  

                </div>
                  <button type="submit" class="btn btn-primary btn-md " name="submit" value="Next">Next</button>
            </form>
          </div>

        </div>
    </div>
   
  
  
</body>
</html>
