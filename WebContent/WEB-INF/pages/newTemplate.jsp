<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Template</title>
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
			<div class=" col-xs-6 col-xs-offset-5" style="background: lightgray;visibility:hidden;display:none" >
				<div style="margin: 20px; visibility:hidden" id="customForm" >
					<div class="form-group row"  id="useCaseIDdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Unique ID for this use case" >ID</a></label>
						<div class="col-10">
							<input class="form-control" type="text"   />								
						</div>
					</div>
					<div class="form-group row" id="titlediv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Goal of this use case" >Title</a></label>
						<div class="col-10">
							<input class="form-control" type="text"  >								
						</div>
					</div>
					<div class="form-group row" id="intentdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="A summary statement of the purpose of this use case">Intent</a></label>
						<div class="col-10">
							<input class="form-control" type="text"  >
						</div>
					</div>
					<div class="form-group row" id="scopediv">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="What is the scope of this use case?">Scope</a></label>
						<div class="col-10">
							<textarea class="form-control"   rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row " id="leveldiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="What level in the system the use case stimuli and response take place?">Level</a></label>
						<div class="col-10">
							<input class="form-control" type="text"  name="level"
								>
						</div>
					</div>
					<div class="form-group row" id="descriptiondiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Brief description about the use case" >Description</a></label>
						<div class="col-10">
							<textarea class="form-control"   rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row" id="primaryActordiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A person or software/hardware system that interacts with system to achieve the goal of this use case" >Primary Actor</a>
							</label>
						<div class="col-10">
							<input class="form-control" type="text"  >
						</div>
					</div>
					<div class="form-group row" id="secondaryActorsdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a
							href="#" data-toggle="tooltip" data-placement="right"
							title="Other actors relied upon to accomplish this use case">Secondary
								Actors</a></label>
						<div class="col-10">
							<textarea class="form-control" 
								 rows="5" cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row" id="diagramdiv" >
						<label for="exampleInputFile"><a href="#"
							data-toggle="tooltip" data-placement="right"
							title="Upload any pictures required for this use case">Upload
								Diagram</a></label> <input type="file" class="form-control-file"
							 value="image" aria-describedby="fileHelp">

					</div>
					<div class="form-group row" id="preconditionsdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control"  rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row" id="postconditionsdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed." >Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control"   rows="5"
								cols="5"></textarea>
						</div>
					</div>
					<div class="form-group row" id="frequencyOfUsediv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How often will this use case be used?" >Frequency
							of Use</a></label>
						<div class="col-10">
							<input class="form-control" type="text">
						</div>
					</div>
					<div class="form-group row" id="statusdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="What point are we in developing this Use Case?" >Status</a></label>
						<div class="col-10">
							<div class="radio">
								<label ><input type="radio"
									name="status" id="open" value="open">Open</label>
							</div>
							<div class="radio">
								<label ><input type="radio"
									name="status" id="pending review" value="pending review">Pending Review</label>
							</div>
							<div class="radio">
								<label class="radio-inline"><input type="radio"
									name="status" id="closed"  value="closed">Closed</label>
							</div>
						</div>
					</div>
					<div class="form-group row" id="ownerdiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Who owns this use case in your project team?" >Owner</a></label>
						<div class="col-10">
							
							<input class="form-control" type="text" >
							
						</div>
					</div>
					<div class="form-group row" id="prioritydiv" >
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How important is this use case to this Project?" >Priority</a></label>
						<div class="col-10">
							<div class="radio">
								<label><input type="radio" name="priority" id="p1-critical"
									value="p1-critical">P1-Critical</label>
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
					</div>
					
	

			</div>

			

		</div>
		</div>
<script type="text/javascript">  
    function onLoadBody(){     
    	var bodydiv = document.createElement('div');
    	bodydiv.id = 'maindiv';
    	bodydiv.class = 'col-xs-6 col-xs-offset-2';
    	document.getElementsByTagName('body')[0].appendChild(bodydiv);
    	 var fieldList = <%=request.getAttribute("fields")%>;
    		var length = fieldList.length;
    		for (var i = 0; i < length; i++) {
    			document.getElementById('maindiv').appendChild(document.getElementById(fieldList[i]));
    			/* document.getElementById('customForm').style.visibility = 'visible'; */
    		}
    		
    }
    	
    			<%-- var bodydiv = document.createElement('div');
    			bodydiv.id = 'maindiv';
    			bodydiv.class = 'col-xs-6 col-xs-offset-1';

    			
    			var fieldList = <%=request.getAttribute("fields")%>;
    			var length = fieldList.length;
    			for (var i = 0; i < length; i++) {
    				var innerDiv = document.createElement('div');
        			innerDiv.className = 'form-group row';
        			bodydiv.appendChild(innerDiv);
        			
    				document.getElementById(fieldList[i]).style.visibility = 'visible';
    			}  
    			document.getElementsByTagName('body')[0].appendChild(iDiv);
    } --%>
    
    
    
    //var fields = er.getElementsByTagName('input');
   
	
                 
    </script>

</body>
</html>