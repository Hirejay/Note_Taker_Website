<%@page import="org.hibernate.Session"%>
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
<title>Show Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>


	</div>
	<div class="container">
		<div class="row">

			<div class="col-12">

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note n : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top mt-4 ml-4 mx-auto" src="img/notes.png" alt="Card image cap" style="width:100px;">
					<div class="card-body">
						<h5 class="card-title"><%= n.getTitle() %></h5>
						<p class="card-text"><%= n.getContent() %></p>
						<p><b class="text-primary"><%= n.getAddeddate() %></b></p>
						<a href="DeleteNoteSarvlet?note_id=<%=n.getId() %>" class="btn btn-danger">Delete</a>
						<a href="editnote.jsp?note_id=<%=n.getId() %>" class="btn btn-primary">Update</a>
						
					</div>
				</div>




				<%
				}
				%>







			</div>
		</div>




	</div>



</body>
</html>