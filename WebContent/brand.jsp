<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
			<li class="selected-menu">
				<a href="<%=request.getContextPath()%>/brand">
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
				<a href="<%=request.getContextPath()%>/inventory">
					<img src="https://img.icons8.com/ios-filled/30/ffffff/in-inventory.png"/>
					<span>Inventory</span>
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
		<h3>BRAND</h3>
		<div class="btn-header">
			<a href="<%=request.getContextPath()%>/newbrand" class="btn btn-danger">ADD NEW BRAND</a>
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
		        <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Actions</th>
		      </tr>
		    </thead>
		      <tbody>
		      <!--   for (Todo todo: todos) {  -->
		      <c:forEach var="brand" items="${listBrand}">
		
		        <tr>
		          <td>
		            <c:out value="${brand.id}" />
		          </td>
		          <td>
		            <c:out value="${brand.ten}" />
		          </td>
		          <td>
		            <c:out value="${brand.mota}" />
		          </td>
		          <td>
		          	<a href="editbrand?id=<c:out value='${brand.id}' />">
		          		<img src="https://img.icons8.com/material-rounded/24/000000/edit--v2.png"/>
		          	</a> 
		          	 <a href="deletebrand?id=<c:out value='${brand.id}' />">
		          	 	<img src="https://img.icons8.com/ios-glyphs/24/000000/delete-forever.png"/>
		          	 </a>
		          </td>
		        </tr>
		      </c:forEach>
		      <!-- } -->
		      </tbody>
		  </table>
		</div>
	</div>
</body>

<style>
	body{
		margin: 0px;
	}
	.menu ul li a{
		text-decoration: none;
	}
	li.selected-menu{
		background: #aaa6a0;
		color: black;
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
	
	h3{
		margin-left: 20px;
	}
	
	.search-bar{
	
	}
</style>

</html>