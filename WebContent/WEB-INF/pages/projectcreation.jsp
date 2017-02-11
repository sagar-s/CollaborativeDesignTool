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
 

     <nav>
       <ul >
         <li><a class="now-active" href="#"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Description</a></li>
         <li><a href="#" class="inactivelink"> <i class="fa fa-file-text-o" aria-hidden="true"></i>   UseCase</a></li>
         <li><a href="#" class="inactivelink"><i class="fa fa-users" aria-hidden="true"></i>  Roles</a></li>
         <li><a href="#" class="inactivelink"><i class="fa fa-check-square-o" aria-hidden="true"></i>  Policy</a></li>
       </ul>
     </nav>
   </div>
      <div class="container-fluid">
        <div class="row">
          <div class="alloc col-md-6 col-md-offset-3">
            <form action="" method="">
              <div class="form-group row">
                  <label for="ProjectName" class="col-2 col-form-label">Project name</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-inpu">
                  </div>
                </div>
                <div class="form-group row">
                  <label for="ProjectName" class="col-2 col-form-label">Project name</label>
                  <div class="col-10">
                    <textarea class="form-control" name="ProjectDescription" rows="10" cols="30"></textarea>
                  </div>

                </div>
                  <button type="submit" class="btn btn-warning btn-md " name="submit" value="Next">Next</button>
            </form>
          </div>

        </div>
    </div>
   
  
  
</body>
</html>
