<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Roles</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
  <link href = "bootstrap-theme/css/style.css" rel="stylesheet">

</head>
<body>
		<div class="jumbotron">
  		<div class="container">
    		<h2 class="jumboHeading"><i>Collaborative Design Tool</i></h2><p class="jumboHeading"><i>An awesome way to structure the UseCases for your project</i></p>
  		</div>
		</div>
      <nav>
        <ul >
          <!--<li><a href="#" ><b> My Projects</b></a></li>-->
          <li><a class="inactivelink" href="#"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Description</a></li>
          <li><a href="#" class="inactivelink"> <i class="fa fa-file-text-o" aria-hidden="true"></i>   UseCase</a></li>
          <li><a href="#" class="now-active"><i class="fa fa-users" aria-hidden="true"></i>  Roles</a></li>
          <li><a href="#" class="inactivelink"><i class="fa fa-check-square-o" aria-hidden="true"></i>  Policy</a></li>
        </ul>
      </nav>
      <div class="container-fluid">
        <div class="row">
          <div class="wrap-description col-md-6 col-md-offset-3">
            <form class="alloc" action="addpolicy" method="POST">
              <h3 class="jumboHeading">Solution Manager</h3>
              <table class="table table-bordered">
                <tr>
                  <th>Name</th>
                  <th>E-Mail ID</th>
                  <th>Select</th>
                </tr>
                <tr>
                  <td>Jill Smith</td>
                  <td>jsmith@gmail.com</td>
                  <td><input type="checkbox" name="solman1"/></td>
                </tr>
                <tr>
                  <td>Nicole Barr</td>
                  <td>nickBarr@gmail.com</td>
                  <td><input type="checkbox" name="solman2"/></td>
                </tr>
              </table><br>
              <h3 class="jumboHeading">Architect</h3>
              <table class="table table-bordered">
                <tr>
                  <th>Name</th>
                  <th>E-Mail ID</th>
                  <th>Select</th>
                </tr>
                <tr>
                  <td>Jill Smith</td>
                  <td>jsmith@gail.com</td>
                  <td><input type="checkbox" name="arch1"/></td>
                </tr>
                <tr>
                  <td>Nicole Barr</td>
                  <td>nickBarr@gmail.com</td>
                  <td><input type="checkbox" name="arch2"/></td>
                </tr>
              </table><br>
              <h3 class="jumboHeading">Development Manager</h3>
              <table class="table table-bordered">
                <tr>
                  <th>Name</th>
                  <th>E-Mail ID</th>
                  <th>Select</th>
                </tr>
                <tr>
                  <td>Jill Smith</td>
                  <td>jsmith@gmail.com</td>
                  <td><input type="checkbox" name="arch1"/></td>
                </tr>
                <tr>
                  <td>Nicole Barr</td>
                  <td>nickBarr@gmail.com</td>
                  <td><input type="checkbox" name="arch2"/></td>
                </tr>
              </table><br>
              <h3 class="jumboHeading">Quality Analyst</h3>
              <table class="table table-bordered">
                <tr>
                  <th>Name</th>
                  <th>E-Mail ID</th>
                  <th>Select</th>
                </tr>
                <tr>
                  <td>Jill Smith</td>
                  <td>jsmith@gmail.com</td>
                  <td><input type="checkbox" name="arch1"/></td>
                </tr>
                <tr>
                  <td>Nicole Barr</td>
                  <td>nickBarr@gmail.com</td>
                  <td><input type="checkbox" name="arch2"/></td>
                </tr>
              </table><br>
              <button type="submit" class="next-btn btn btn-warning btn-lg active" name="submit" value="Next">Next</button>
            </form>
          </div>
        </div>
      </div>
</body>
</html>

