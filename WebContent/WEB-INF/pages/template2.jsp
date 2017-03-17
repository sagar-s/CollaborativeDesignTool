
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
		 <div class="jumbotron">
		  <div class="container">
		    <h2 class="jumboHeading"><i>Collaborative Design Tool</i></h2>
		  </div>
		</div>

     
 
      <div class="container">
          
            <form action="choosetemplate" method="POST">
              <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Introduction</label>
                  <div class="col-10">
                    <input class="form-control" type="text" id="example-text-input" name="name">
                  
                </div>
                 </div>
                <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Overview</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div>
                  </div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Actors</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div></div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Cases:</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div></div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Status</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div></div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Owner</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div></div>
                  <div class="form-group row">
                  <label for="ProjectName" class="jumboHeading col-2 col-form-label">Priority</label>
                  <div class="col-10">
                    <textarea class="form-control" name="description" rows="5" cols="30"></textarea>
                  </div>
                  </div>
        
                  

               
                  <button type="submit" class="btn btn-warning btn-md " name="submit" value="Next">Next</button>
            </form>
          </div>

       
   
  
  
</body>
</html>

