<%@page import="com.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: url("https://www.jakpost.travel/wimages/large/14-142813_keywords-light-plain-color-wallpapers-and-tags-electric.jpg");
}
</style>
<meta charset="ISO-8859-1">
<title>Doctors Management </title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/doctors.js"></script>

</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-6">
			<h1>Doctors Management</h1>
			
			<form id="formDoctor" name="formDoctor" method="post" action="doctors.jsp">

				Doctor Reg.No:
				<input id="doctorCode" name="doctorCode" type="text" class="form-control form-control-sm">
				<br>
				 
				Doctor name:
				<input id="doctorName" name="doctorName" type="text" class="form-control form-control-sm">
				<br>
				
				Specialization:
				<input id="doctorSpec" name="doctorSpec" type="text" class="form-control form-control-sm">
				<br>
				
				Contact No:
				<input id="doctorCont" name="doctorCont" type="text" class="form-control form-control-sm">
				<span style="color:red;" id="error_contact"></span><br>
				
				Address:
				<input id="doctorAdd" name="doctorAdd" type="text" class="form-control form-control-sm">
				<br>
				
				Email Address:
				<input id="doctorEmail" name="doctorEmail" type="text" class="form-control form-control-sm">
				<span style="color:red;" id="error_email"></span><br>
				 
				Hospital:
				<input id="doctorHospital" name="doctorHospital" type="text" class="form-control form-control-sm">
				<br>
				
				<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
				<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">
			</form>
			
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			<br>

			<div id="divDoctorssGrid">
				<%
					Doctor doctorObj = new Doctor();
							out.print(doctorObj.readDoctors());
				%>
			</div>
		</div>
	</div>
</div>
</body>
</html>