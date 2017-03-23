<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Use Case Template 1</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">


<style>
    a{
        color: black;
    }
</style>
</head>
<body onload="javascript:onLoadBody()">
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Collaborative Design Tool</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="viewprojectlist" onclick="parentNode.submit();">Home</a></li>
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
			<div class=" col-xs-6 col-xs-offset-1" style="background: lightgray">
				<c:set var="checkstatus" value='${requestScope["editstatus"]}'/>
				<form action="createusecasetemp1" method="POST" style="margin: 20px">
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Unique ID for this use case" >ID</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="useCaseID" name="useCaseID" value="${usecase.useCaseID}" required/>								
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Goal of this use case" >Title</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="title" name="title" value="${usecase.title}">								
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Brief description about the use case" >Description</a></label>
						<div class="col-10">
							<textarea class="form-control" name="description" id="description" rows="5"
								cols="5">${usecase.description}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A person or software/hardware system that interacts with system to achieve the goal of this use case" >Primary Actor</a>
							</label>
						<div class="col-10">
							<input class="form-control" type="text" id="primaryActor" name="primaryActor" value="${usecase.primaryActor}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="preconditions" id="preconditions" rows="5"
								cols="5">${usecase.preconditions}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed." >Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="postconditions" id="postconditions" rows="5"
								cols="5">${usecase.postconditions}</textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How often will this use case be used?" >Frequency
							of Use</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="frequencyOfUse" name="frequencyOfUse" value="${usecase.frequencyOfUse}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What point are we in developing this Use Case?" >Status</a></label>
						<div class="col-10">
							<div class="radio">
								<label ><input type="radio"
									name="status" id="open" value="open" onclick="javascript:viewPreviousChanges()" checked>Open</label>
							</div>
							<div class="radio">
								<label ><input type="radio"
									name="status" id="pending review" value="pending review" onclick="javascript:viewPreviousChanges()">Pending Review</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="status" id="closed"  value="closed" onclick="javascript:viewPreviousChanges()">Closed</label>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Who owns this use case in your project team?" >Owner</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="owner"
								name="owner" value="${usecase.owner}">
						</div>
					</div>
					<div class="form-group row">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How important is this use case to this Project?" >Priority</a></label>
						<div class="col-10">
							<div class="radio">
								<label><input type="radio" name="priority" id="p1-critical"
									value="p1-critical" checked>P1-Critical</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority" id="p2-high"
									value="p2-high">P2-High</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority" id="p3-medium"
									value="p3-medium">P3-Medium</label>
							</div>
							<div class="radio">
								<label><input type="radio" name="priority" id="p4-low"
									value="p4-low">P4-Low</label>
							</div>
						</div>
					</div>
					<input type="hidden" name="projectname" value="${projectname}">
					<input type="hidden" name="template" value="${template}">
					
					<button type="submit" class="btn btn-primary btn-md btn-block"
						name="submit" value="Next">Submit</button>	

				</form>
			</div>

			<div class="col-xs-3 col-xs-offset-1" style="background: lightgrey; visibility:hidden" id="previousChanges">
				<h3>Previous Changes</h3>
				<ul>
					<li><a href="#">View changes made by Development Manager</a></li>
					<li><a href="#">View changes made by Architect</a></li>
					<li><a href="#">View changes made by Solution Manager</a></li>
					<li><a href="#">View changes made by Designer</a></li>
				</ul>
			</div>

		</div>
	</div>
    <script type="text/javascript">
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();   
        });
        function viewPreviousChanges(){
            if(document.getElementById('open').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else if(document.getElementById('pendingReview').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else if(document.getElementById('closed').checked){
                document.getElementById('previousChanges').style.visibility = 'visible';
            }
            else{
                document.getElementById('previousChanges').style.visibility = 'hidden';
            }
        }
        function onLoadBody(){
        	
            
            var query_string = {};
            var query = window.location.search.substring(1);
            var vars = query.split("&");
            var name=vars[1].split("=");
            if(name[1]==="false"){
            	document.getElementById('useCaseID').readOnly=true;
        		document.getElementById('title').readOnly=true;
        		document.getElementById('description').readOnly=true;
        		document.getElementById('primaryActor').readOnly=true;
        		document.getElementById('preconditions').readOnly=true;
        		document.getElementById('postconditions').readOnly=true;
        		document.getElementById('frequencyOfUse').readOnly=true;
        		document.getElementById('open').disabled=true;
        		document.getElementById('pending review').disabled=true;
        		document.getElementById('closed').disabled=true;
        		document.getElementById('owner').readOnly=true;
        		document.getElementById('p1-critical').disabled=true;
        		document.getElementById('p2-high').disabled=true;
        		document.getElementById('p3-medium').disabled=true;
        		document.getElementById('p4-low').disabled=true;
            }
        
           
        }
            		
            /* 
            (document .getElementsByTagName('INPUT').id = '0') || (document.getElementByTagName('INPUT').id='1')){
                document.getElementById('0').readOnly = false;
                document.getElementById('1').readOnly = false;
            }
            else if(document.getElementById('pendingReview').checked){
                document.getElementsByTagName('INPUT').readOnly = true;
            } 
            else if(document.getElementById('closed').checked){
                document.getElementsByTagName('INPUT').readOnly = true;
            }
            else{
                document.getElementsByTagName('INPUT').readOnly = true;
            } */
        
    </script>

</body>
</html>