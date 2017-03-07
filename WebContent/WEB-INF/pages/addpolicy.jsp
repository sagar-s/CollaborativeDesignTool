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
	<div class="jumbotron">
  		<div class="container">
    		<h2 class="jumboHeading"><i>Collaborative Design Tool</i></h2>
  		</div>
	</div>
    <nav>
      <ul >
        <!--<li><a href="#" ><b> My Projects</b></a></li>-->
        <li><a class="inactivelink" href="#"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Description</a></li>
        <li><a href="#" class="inactivelink"> <i class="fa fa-file-text-o" aria-hidden="true"></i>   UseCase</a></li>
        <li><a href="#" class="inactivelink"><i class="fa fa-users" aria-hidden="true"></i>  Roles</a></li>
        <li><a href="#" class="now-active"><i class="fa fa-check-square-o" aria-hidden="true"></i>  Policy</a></li>
      </ul>
    </nav>
    <div class="container-fluid">
      <div class="row">
        <div class="wrap-description col-md-6 col-md-offset-3">
          <form class="alloc" action="createproject" method="POST">
            <label class="radio-inline">
              <input type="radio" name="policyname" id="inlineRadio1" value="FinishToStart">
              	<h2 class="jumboHeading">Policy 1</h2><br><p class="jumboHeading">Finish to Start: The predecessor team has to finish before successor team starts.<br>
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
            <label class="radio-inline">
              <input type="radio" name="policyname" id="inlineRadio2" value="StartToStart">
              <h2 class="jumboHeading">Policy 2</h2><br><p class="jumboHeading">Start to Start: All the teams can start working simultaneously.<br></br>
              	<label for="ProjectName" class="jumboHeading col-2 col-form-label">DAYS</label>
                  <div class="col-3">
                  <Label>Development Manager</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-3">
                  <Label>Solution Manager</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-3">
                  <Label>Architect</Label>
                   <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-3">
                  <Label>QA</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                </div>
              	</p>
            </label>
            <label class="radio-inline">
              <input type="radio" name="policyname" id="inlineRadio3" value="StartToFinish">
              	<h2 class="jumboHeading">Policy 3</h2><br><p class="jumboHeading">Start To Finish: The predecessor team has to start before successor team finishes.<br></br>
              <label for="ProjectName" class="jumboHeading col-2 col-form-label">DAYS</label>
                  <div class="col-1">
                  <Label>Development Manager</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-1">
                  <Label>Solution Manager</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-1">
                  <Label>Architect</Label>
                   <input type="number" id="example-text-input" name="days">
                  </div>
                  <div class="col-1">
                  <Label>QA</Label>
                    <input type="number" id="example-text-input" name="days">
                  </div>
                </div>
              	</p>
            </label>
            <button type="submit" class="next-btn btn btn-warning btn-lg active" name="submit" value="Next">Submit</button>
          </form>
        </div>
      </div>
    </div>
</body>
</html>
