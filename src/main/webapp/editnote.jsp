<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.*"%>
<%@page import="com.entities.Note"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp"%>
<title>Update Note</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>


	</div>
	<div class="container">
		<div class="row">

			<div class="col-12">
				<h1 class="text-center">Edit Details</h1>
				<%
				int nid = Integer.parseInt(request.getParameter("note_id").trim());
				Session s = FactoryProvider.getFactory().openSession();
				Transaction tx = s.beginTransaction();
				Note note = (Note) s.get(Note.class, nid);
				%>
				<form action="UpdateNoteSarvlet" method="post">
				
				<input value="<%=note.getId() %>" name="id" type="hidden">
					<div class="form-group">
						<label for="title">Enter the title</label> <input required
							type="text" name="title" class="form-control" id="title" value="<%=note.getTitle() %>"
							placeholder="Enter title here">

					</div>
					<div class="form-group">
						<label for="content">Enter the content</label>
						<textarea required name="content" class="form-control"
							id="content" placeholder="Enter content here"
							style="height: 200px"><%= note.getContent() %></textarea>
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Save</button>
					</div>


				</form>



			</div>
		</div>

	</div>

</body>
</html>