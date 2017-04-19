<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="usecaseApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Policy Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap-theme/css/font-awesome.min.css" rel="stylesheet">
<link href="bootstrap-theme/css/style.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body ng-app="usecaseApp">
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
        <div class="col-xs-6 col-xs-offset-3">
              <h1 style="font-family:Arial; font-style: bold">Create Project</h1><br><br>
              <div class="inactive well well-md col-xs-3 ">
                <i class="fa fa-pencil" aria-hidden="true"></i>
                Description
                </div>
                <div class="inactive well well-md
                col-xs-3 " >
                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                Use Case Template
                </div>
                <div class="inactive well well-md
                col-xs-3 " >
                <i class="fa fa-users" aria-hidden="true"></i>
                 Team 
                </div>
                <div class="now-active well well-md
                col-xs-3 ">
                <i class="fa fa-check-square-o" aria-hidden="true"></i> 
                Policy
                </div>
                <h3 class="alloc style="font-family:Arial; margin:50px">Choose Policy</h3>
        
      
        		
                <div style="margin-top:30px" ng-controller="usecaseController" >
                	<form action="createproject" method="POST">
                    <div class="table-responsive table-bordered">
                    
						<table class="table">
							<thead>
								<tr>
									<th>Policy #</th>
                                    <th>Name</th>
									<th>Description</th>
									<th>Select</th>
								</tr>
							</thead>
							<tbody>								
								<tr  ng-repeat="policy in policies">
									<td>{{policies.indexOf(policy)+1}}</td>
									<td>{{policy.policyname}}</td>
									<td><p>{{policy.description}}</p></td>
									<td><input 
                                        type="radio" 
                                        name="policyname" 
								        id="inlineRadio" 
                                        value="{{policy.policyname}}"
                                        ng-model = "radioOption"
                                        ng-change = "theForm()"></td>                                                                            
								</tr>
							</tbody>
						</table>
					</div>
					<a class="btn btn-md btn-block " style="background:black; margin-top:10px; margin-bottom:10px; color:white" id="" ng-hide="hideme"
						ng-click="displayaddpolicyform()">Create new Custom Policy</a>
                    <div style="margin-top:10px"ng-show="showaddpolicyform">                        
                        <div class="form-group">
                        <label for="PolicyName">Policy Name</label>
                            <input class="form-control" type="text" id="name" name="name" ng-model="name">
                        </div>
                        <div class="form-group">
                        <label for="PolicyDescription">Policy Description</label>
                            <textarea class="form-control" name="description" id="description" rows="3"
								cols="3" ng-model="description"></textarea>
                        </div>
                        <a class="btn btn-primary btn-md btn-block " style=" margin-top:10px; margin-bottom:10px; color:white" 
                        ng-click="addPolicy()">Save Custom Policy</a>


                    </div>
                    <div style="margin-top:10px" ng-show="radioOption">
                        <div id="timeAllotmentForm">
                            <div class ="table-bordered">	
                              <table class="table">					
							    <tr>
                                    <th>Team </th>
                                    <th>Days</th>
                                    <th>Minutes</th> 
                                 </tr>
								<tr>
                                    <td>Development Manager: </td>
                                    <td><input type="number" name="devdays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="devminutes" value="0" min="0" max="60"></td>
                                </tr>
								<tr>
                                    <td>Solution Manager: </td>
                                    <td><input type="number" name="solndays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="solnminutes" value="0" min="0" max="60"></td>
                                </tr>
								<tr>
                                    <td>Architect:</td>
                                    <td> <input type="number" name="ardays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="arminutes" value="0" min="0" max="60"></td>
                                </tr>
								<tr>
                                    <td>QA: </td>
                                    <td><input type="number" name="qadays" value="0" min="0" max="31"></td>
                                    <td><input type="number" name="qaminutes" value="0" min="0" max="60"></td>
                                </tr>
							
                            </table>
                                    
                    </div>
                   </div>
                  
                    <button type="submit" class="btn btn-md btn-block " style="background:black; margin-top:10px; color:white"
							name="submit" value="Submit">Create Project</button>
                </div>
                </form>
                           
            
                        
          
        </div>
      </div>
      </div>
      </div>

  
    <script src="//code.angularjs.org/snapshot/angular-animate.js"></script>
    <script>
        var app = angular.module('usecaseApp', []);
        app.controller('usecaseController', ['$scope',function($scope){
            $scope.showaddpolicyform = false;
            $scope.displayaddpolicyform = function(){
                $scope.showaddpolicyform = true;
                $scope.hideme = true;
            }  
        $scope.policies = ${policyList};
        $scope.addPolicy = function(){
            $scope.policies.push({
                policyname: $scope.name,
                description: $scope.description
            })
            $scope.name = " ";
            $scope.description = " ";
            
            $scope.showaddpolicyform = false;
            $scope.hideme = false;
        }
        $scope.theForm = function(){
            $scope.radioOption = true;
            $scope.hideme = true;
        }
        
        }]);
        
    </script>
</body>
</html>