<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Previous Versions</title>
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
    .nav-link{
        
        color:black;
    }
    
</style>
</head>
<body>
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
			<div class=" col-xs-8 col-xs-offset-2" >
                <ul class="nav nav-tabs nav-inverse" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#commit4" role="tab" >Commit 4</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#commit3" role="tab">Commit 3</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#commit2" role="tab">Commit 2</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#commit1" role="tab">Commit 1</a>
                </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane active" id="commit4" role="tabpanel">
                        <table class="table table-bordered" style="margin-top:5px">
                            <thead>
                            <tr>
                                <th>Field</th>
                                <th>Changes</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Title</td>
                                <td>
                                    <span class = "bg-success">Purchase an Item</span>
                                    <span class = "bg-danger">Managing purchases of an item</span>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>
                                    <span class="bg-success" >After the user has selected items to purchase and then order the items. The user will provide payment and shipping information. The system will respond with confirmation of the order and a tracking number that the user can use to check on order status in the future. The system will also provide the user with an estimated delivery date for the order, which will include all selected items. The user may already have an account with the company with billing and shipping information.</span>
                                    <span class = "bg-danger">The user selects items and purchases them</span></td>
                                
                            </tr>
                            <tr>
                                <td>Pre-Conditions</td>
                                <td>
                                    <span class = "bg-success">User has selected the items to be purchased.</span>
                                    <span class = "bg-danger">User selecys the item</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Post-Conditions</td>
                                <td>
                                    <span class = "bg-success">The order will be placed in the system.</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Primary Actors</td>
                                <td>
                                    <span class = "bg-success">Registered Shopper (Has an existing account, possibly with billing and shipping information)</span>
                                    <span class="bg-success">Non-registered Shopper (Does not have an existing account)</span>

                                    <span class = "bg-danger">Fulfillment System (processes orders for delivery to customers)</span>
                                </td>
                            
                            </tr>
                            
                            <tr>
                                <td>Frequency of Use</td>
                                <td>
                                    <span class = "bg-success">Used Frequently</span>
                                    <span class = "bg-danger">Often Used</span>
                            
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="commit3" role="tabpanel">
                        <table class="table table-bordered" style="margin-top:5px">
                            <thead>
                            <tr>
                                <th>Field</th>
                                <th>Changes</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Title</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                                
                            </tr>
                            
                            <tr>
                                <td>Pre-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Post-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Primary Actors</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Secondary Actors</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Frequency of Use</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                            
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="commit2" role="tabpanel">
                        <table class="table table-bordered" style="margin-top:5px">
                            <thead>
                            <tr>
                                <th>Field</th>
                                <th>Changes</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Title</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>
                                    <span class="bg-success" >The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span></td>
                                
                            </tr>
                            <tr>
                                <td>Pre-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Post-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Primary Actors</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            
                            <tr>
                                <td>Frequency of Use</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                            
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="commit1" role="tabpanel">
                        <table class="table table-bordered" style="margin-top:5px">
                            <thead>
                            <tr>
                                <th>Field</th>
                                <th>Changes</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Title</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>
                                    <span class="bg-success" >The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span></td>
                                
                            </tr>
                            <tr>
                                <td>Pre-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Post-Conditions</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Primary Actors</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            <tr>
                                <td>Secondary Actors</td>
                                <td>
                                    <span class = "bg-success">The Additions made to this field</span>
                                    <span class = "bg-danger">The deletions made to this field</span>
                                </td>
                            
                            </tr>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
		</div>
    </div>
</body>
</html>