<%--
  Created by IntelliJ IDEA.
  User: AaronLX
  Date: 7/2/2021
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
  <title>Kho Management Application</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<style>
	body{
		margin: 0px;
	}
	li.selected-menu{
		background: #aaa6a0;
		color: black;
	}
	.menu ul li a{
		text-decoration: none;
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
	
		
	h3{
		margin-left: 20px;
		font-size: 40px;
		font-weight: bold;
		color: orange;
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
	
	.container{
		padding-top: 100px;
	}
</style>
<body>

<header>
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
			<li class="selected-menu">
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
</header>
<div class="container col-md-5">
  <div class="card">
    <div class="card-body">
      <c:if test="${kho != null}">
      <form action="updatekho" method="post">
        </c:if>
        <c:if test="${kho == null}">
        <form action="insertkho" method="post">
          </c:if>

          <caption>
            <h2>
              <c:if test="${kho != null}">
                Edit Kho
              </c:if>
              <c:if test="${kho == null}">
                Add New Kho
              </c:if>
            </h2>
          </caption>

          <c:if test="${kho != null}">
            <input type="hidden" name="id" value="<c:out value='${kho.id}' />" />
          </c:if>

          <fieldset class="form-group">
            <label>Ten Kho</label> <input type="text" value="<c:out value='${kho.ten}' />" class="form-control" name="tenkho" required="required">
          </fieldset>

          <fieldset class="form-group">
            <label>Dia Diem</label> <input type="text" value="<c:out value='${kho.diadiem}' />" class="form-control" name="diadiem" required="required">
          </fieldset>

          <button type="submit" class="btn btn-success">Save</button>
        </form>
    </div>
  </div>
</div>
</body>

</html>
