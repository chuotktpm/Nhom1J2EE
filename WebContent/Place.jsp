<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dashboard / Manager Storage</title>
	<link rel="icon" href="https://img.icons8.com/ios-glyphs/60/E55700/data-center.png" type="image/icon type">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="menu">
			<ul>
			
			<li class="logo-li">
				<a href="<%=request.getContextPath()%>/dashboard">
					<img src="https://img.icons8.com/ios-glyphs/60/E55700/data-center.png"/>
				</a>
			</li>
			
			<li>
				<a href="<%=request.getContextPath()%>/dashboard">
					<img src="https://img.icons8.com/ios-filled/30/ffffff/dashboard.png"/>
					<span>Dashboard</span>
				</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/listBrand">
					<img src="https://img.icons8.com/ios-glyphs/30/ffffff/badge.png"/>
					<span>Brand</span>
				</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/inout">
					<img src="https://img.icons8.com/ios/30/ffffff/multiple-inputs.png"/>
					<span>Input Output</span>
				</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/place">
					<img src="https://img.icons8.com/ios/30/ffffff/place-marker--v1.png"/>
					<span>Place</span>
				</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/storage">
					<img src="https://img.icons8.com/ios/30/ffffff/ammo-tin.png"/>
					<span>Storage</span>
				</a>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/item">
					<img src="https://img.icons8.com/ios-glyphs/30/ffffff/sweater.png"/>
					<span>Items</span>
				</a>
			</li>
		</ul>
	</div>
	<div class="page-content">
		<h3>PLACE</h3>
		<div class="btn-header">
			<button type="submit" class="btn btn-danger btn-add-brand">ADD PLACE</button>
		</div>
		<div class="search-bar">
			<form class="navbar-form navbar-left" action="#">
			      <div class="form-group">
			        <input type="text" class="form-control" placeholder="Search">
			      </div>
			      <button type="submit" class="btn btn-default">
			      		<img src="https://img.icons8.com/ios/15/011105/search--v1.png"/>
			      </button>
			</form>
		</div>
		
		<div class="container-fluid">          
		  <table class="table table-hover">
		    <thead>
		      <tr>
		        <th>Firstname</th>
		        <th>Lastname</th>
		        <th>Email</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr>
		        <td>John</td>
		        <td>Doe</td>
		        <td>john@example.com</td>
		      </tr>
		      <tr>
		        <td>Mary</td>
		        <td>Moe</td>
		        <td>mary@example.com</td>
		      </tr>
		      <tr>
		        <td>July</td>
		        <td>Dooley</td>
		        <td>july@example.com</td>
		      </tr>
		    </tbody>
		  </table>
		</div>
</body>

<style>
	body{
		margin: 0px;
	}	
	h3{
		margin-left: 20px;
	}
	.title{
		text-align: center;
		font-size: 40px;
		font-family: sans-serif;
		background: appworkspace;
		padding: 10px;
	}
	.menu{
		float: left;
		width: 100px;
		z-index: 1;
		background-color: #373330;
		position: fixed;
		height: 100%;
		overflow-x: hidden;
		top: 0; /* Stay at the top */
  		left: 0;
	}
	ul{
		list-style-type: none;
		padding: 0px;
		margin: 0px;
		overflow: hidden;
		text-align: center;
	}
	li{
		
	}
	li a{
		padding-top: 10px;
		display: block;
		text-decoration: none;
		color: #f7f3eb;
	}
	
	li:hover {
		background: #aaa6a0;
		color: black;
	}
	
	li.logo-li:hover {
		background: #373330;
		color: black;
	}
	
	li.logo-li{
		padding-top: 0.9rem;
		padding-bottom: 1rem;
	}
	
	li span{
		display: block;
		text-transform: uppercase;
		font-family: sans-serif;
		font-weight: bold;
		font-size: 13px;
		padding-top: 5px;
		padding-bottom: 5px;
	}
	
	
	.page-content{
		display: block;
		position: relative;
		margin-left: 100px;
	}
	
	.btn-header{
		background: #f8f8f8;
    	border-bottom: 1px solid #e3e3e3;
    	border-top: 1px solid #e3e3e3;
    	padding: 1.5rem;
	}
	
	.search-bar{
	
	}
</style>

</html>