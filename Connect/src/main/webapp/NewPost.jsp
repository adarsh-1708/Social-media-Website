<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Post"%>
<%@ page import="dao.UserDAO"%>
<%
	if (session == null || session.getAttribute("user_id") == null) {
		response.sendRedirect("login");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home | Connect</title>
<link rel="shortcut icon" href="image/logo.png">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<style type="text/css">
	.my-container {
	    margin-top: 120px;
	}
	
	@media (max-width:800px){
		.my-container {
	    	margin-top: 240px !important;
		}
	}
</style>
</head>
<body class="bg-dark">

	<%@include file="header.jsp" %>

	<main role="main">
		<div class="my-container">
			<div class="row">
			<div class="col-md-12 col-sm-12">
				<div style="padding: 20px;">
					<form action="home" method="post">
					  <div class="form-group">
					    <label for="post" style="color: #ffffff">Create Post</label>
					    <textarea name="post" class="form-control" id="post" rows="3"></textarea>
					  </div>
					  <button type="submit" class="btn btn-primary">Post</button>
					</form>
				</div>
			</div>
			
			</div>
			</div>
	</main>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
	<script>
            CKEDITOR.replace('post');
    </script>
</body>
</html>