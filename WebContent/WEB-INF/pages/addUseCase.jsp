<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add UseCase</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href = "style.css" rel="stylesheet">

</head>
<body>
      <nav>
        <ul >
          <!--<li><a href="#" ><b> My Projects</b></a></li>-->
          <li><a class="inactivelink" href="#"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Description</a></li>
          <li><a href="#" class="now-active"> <i class="fa fa-file-text-o" aria-hidden="true"></i>   UseCase</a></li>
          <li><a href="#" class="inactivelink"><i class="fa fa-users" aria-hidden="true"></i>  Roles</a></li>
          <li><a href="#" class="inactivelink"><i class="fa fa-check-square-o" aria-hidden="true"></i>  Policy</a></li>
        </ul>
      </nav>
      <div class="container-fluid">
        <div class="row">
          <div class="wrap-description col-md-6 col-md-offset-3">
            <form class="alloc" action = "" method="">
              <label class="radio-inline">
                  <input type="radio" id="inlineRadioOption" value="option1">
                  <img src="bootstrap-theme/Images/blank_paper.JPG" class="img-rounded" onclick="" alt="Responsive image">
              </label>
              <label class="radio-inline">
                  <input type="radio" id="inlineRadioOption" value="option2">
                  <img src="bootstrap-theme/Images/use-case-lg.JPG" class="img-rounded" onclick=""alt="Responsive image">
              </label>
              <label class="radio-inline">
                  <input type="radio" id="inlineRadioOption" value="option3">
                  <img src="bootstrap-theme/Images/usecase4.gif" class="img-rounded" onclick="" alt="Responsive image">
              </label>
              <button type="submit" class="next-btn btn btn-warning btn-lg active" name="submit" value="Next">Next</button>
            </form>
          </div>
        </div>
      </div>
</body>
</html>
