<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp"%>
<title>Add Note</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>


	</div>
	<div class="container">
		<h1 class="text-center">Please fill the details</h1>
		<form action="SaveNoteSarvlet" method="post">
			<div class="form-group">
				<label for="title">Enter the title</label> <input required
					type="text" name="title" class="form-control" id="title"
					placeholder="Enter title here">

			</div>
			<div class="form-group">
				<label for="content">Enter the content</label>
				<textarea required name="content" class="form-control" id="content"
					placeholder="Enter content here" style="height: 200px"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>


		</form>
	</div>
</body>
</html>