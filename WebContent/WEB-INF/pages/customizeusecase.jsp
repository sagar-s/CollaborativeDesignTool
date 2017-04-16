<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customize UseCase</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
  <link href = "bootstrap-theme/css/style.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body ng-app="">
    <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                    <a class="navbar-brand" href="#">Collaborative Design Tool</a>
                    </div>
                    <ul class="nav navbar-nav">
                    <li><a href="#">Home</a></li>
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
		<div class="row" >
            <div  style="background: lightgray; margin: 20px; padding: 5px; height:150px" id = 'formFields'>
                <h4 style="font-style: bold; margin-left: 10px"> Select the Fields you wish to Add</h4>
                  
                
                <div class="col-xs-2 ">
                    <div class="form-check form-check-inline " id="">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option1" ng-model="checkedID" > ID
                        </label>
                    </div>
                    <div class="form-check form-check-inline " id="">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option1" ng-model="checkedPA" > Primary Actors
                        </label>
                    </div>
                    <div class="form-check form-check-inline" id="">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedSA" > Secondary Actors
                        </label>
                    </div>
                    
                    
                </div>
                <div class="col-xs-2 ">
                    <div class="form-check form-check-inline" id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedPrC"> Pre-Conditions
                        </label>
                    </div>
                    <div class="form-check form-check-inline " id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option1" ng-model="checkedPoC"> Post-Conditions
                        </label>
                    </div>
                    <div class="form-check form-check-inline" id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedFoU"> Frequency of Use
                        </label>
                    </div>
                    
                    
                </div>
                <div class="col-xs-2 ">
                    
                    <div class="form-check form-check-inline" id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedPriority"> Priority
                        </label>
                    </div>
                    
                    <div class="form-check form-check-inline" id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedStatus"> Status
                        </label>
                    </div>
                    <div class="form-check form-check-inline" id=""  >
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="inlineCheckbox" value="option2" ng-model="checkedOwn"> Owner
                        </label>
                    </div>
                

                </div>
            
		</div>
        <div style="border: black; margin: 20px; padding: 5px; visibility:hidden" id="customForm">
            <form action="" method="POST">
            <div class=" form-group row"   style="margin: 5px; padding: 5px" ng-show="checkedID">
				<label for="ProjectName"  class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Unique ID for this use case" >ID </a></label>
					<div class="col-5">
						<input class="form-control" type="text" id="useCaseID" name="useCaseID" value="" required/>								
					</div>
                    </div> 
         <div class="form-group row"style="margin: 5px; padding: 5px" ng-show="checkedPA">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A person or software/hardware system that interacts with system to achieve the goal of this use case" >Primary Actor</a>
							</label>
						<div class="col-10">
							<input class="form-control" type="text" id="primaryActor" name="primaryActor" value="">
						</div>
					</div>
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedSA">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Secondary Actors</a></label>
						<div class="col-10">
							<textarea class="form-control" name="" id="" rows="5"
								cols="5"></textarea>
						</div>
					</div>
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedPrC">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true before the Use Case starts" >Pre-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="preconditions" id="preconditions" rows="5"
								cols="5"></textarea>
						</div>
					</div>
        
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedPoC">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="A list of conditions that must be true when the Use Case ends,
no matter which Scenario is executed." >Post-Conditions</a></label>
						<div class="col-10">
							<textarea class="form-control" name="postconditions" id="postconditions" rows="5"
								cols="5"></textarea>
						</div>
					</div>
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedFoU">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="How often will this use case be used?" >Frequency
							of Use</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="frequencyOfUse" name="frequencyOfUse" value="">
						</div>
					</div>
        <div class="form-group row" style="margin: 5px; padding: 5px"  ng-show="checkedOwn">
						<label for="ProjectName" class="jumboHeading col-2 col-form-label"><a href="#" data-toggle="tooltip" data-placement="right" title="Who owns this use case in your project team?" >Owner</a></label>
						<div class="col-10">
							<input class="form-control" type="text" id="owner"
								name="owner" value="">
						</div>
					</div>
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedStatus">
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
        <div class="form-group row" style="margin: 5px; padding: 5px" ng-show="checkedPriority">
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
        <button type="submit" class="btn btn-primary btn-md btn-block"
						name="submit" value="Next" id="customize">Save UseCase Template</button>
			</div>       
        </div>
    </div>
    <script type="text/javascript">
     var er = document.getElementById('formFields');
     var fields = er.getElementsByTagName('input');
     for(var i=0;i<fields.length;i++){
         if(fields[i].type === 'checkbox'){
             fields[i].onclick = function(){
                 document.getElementById('customForm').style.visibility = 'visible';
                 
             }
         }
     }
     
        
    </script>
</body>
</html>