<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
   function insertData()
   {
	   alert("You are Inserting data");
	   document.myform.action="user"
	   
   }
   function updateData()
   {
	   let radio1 = document.querySelector('input[name="rno"]:checked');
	   if(radio1){
		   alert("You are Updating data");
		   document.myform.action="updateData";
	   }
	   else
		   {
		   alert("Please Select a Row");
		   document.myform.action="relogin";
		   }
	   
   }
  function deleteData()
  {	
	  let radio1 = document.querySelector('input[name="rno"]:checked');
	   if(radio1){
		   alert("You are Deleting data");
		   document.myform.action="delete";
	   }
	   else
		   {
		   alert("Please Select a Row");
		   document.myform.action="relogin";
		   }
  }
</script>
</head>
<body id="b1" >
<br>
<h1 align="center">Welcome to Details page</h1>
<br>
<%
    List<Student> sList=(List<Student>) request.getAttribute("data");
%>
<%
List<Student> AList=(List<Student>) request.getAttribute("rno");
%>
<div>
<form name="myform">
<table class="table table-dark table-striped">
<thead>
			<tr >
				<th>Select</th>
				<th>Roll Number</th>
				<th>Name</th>
				<th>Marks</th>
				<th>Mobile</th>
				<th>Address</th>
			</tr>
			</thead>
		<tbody>
			
			<%
			for(Student stu : sList) {
			%>
			<tr>
					<td ><input type="radio" name="rno" value="<%=stu.getRno()%>" id="rno_<%=stu.getRno()%>"></td>
					<td><%=stu.getRno() %></td>
					<td><%=stu.getUname() %></td>
					<td><%=stu.getMarks() %></td>
					<td><%=stu.getMono() %></td>
					<td><%=stu.getAddress() %></td>
					
			</tr>	
			<%
			} 
			%>
	
		</tbody>
		</table>
		<div>
		<button class="btn btn-success" onclick="insertData()">Insert</button>
		<button class="btn btn-success" onclick="updateData()">Update</button>
		<button class="btn btn-success" onclick="deleteData()">Delete</button>
		</div>
   </form>
   </div>
</body>
<style>
#b1
{
background-color:black;
color:white;
}
</style>
</html>
