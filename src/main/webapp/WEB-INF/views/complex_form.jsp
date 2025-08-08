<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	crossorigin="anonymous">

<!-- Optional Font Awesome for Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	crossorigin="anonymous" />

<style>
body {
	background-color: #f8f9fa;
}

.card {
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
	border: none;
}

.card-header {
	background: linear-gradient(45deg, #007bff, #0056b3);
	color: white;
}

.form-section-title {
	font-size: 1.1rem;
	font-weight: bold;
	margin-top: 20px;
}

.form-control:focus {
	border-color: #007bff;
	box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.btn-submit {
	padding: 10px 30px;
	font-weight: bold;
	font-size: 16px;
}
</style>
</head>
<body>
 <div class="alert alert-danger" role="alert">
  <form:errors path="student.*"></form:errors>
</div>
	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-10 col-lg-8">
				<div class="card">
					<div class="card-header text-center">
						<h4>
							<i class="fas fa-user-graduate mr-2"></i>Student Registration
							Form
						</h4>
					</div>

					<div class="card-body">
						<form action="handle" method="post" enctype="multipart/form-data">

							<!-- Personal Info -->
							<div class="form-section-title">Personal Information</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="name">Full Name</label> <input type="text"
										class="form-control" id="name" name="name"
										placeholder="e.g. Enter your name " required>
								</div>
								<div class="form-group col-md-6">
									<label for="id">Student ID</label> <input type="text"
										class="form-control" id="id" name="studentId"
										placeholder="e.g. STU12345" required>
								</div>
							</div>

							<div class="form-group">
								<label for="dob">Date of Birth <small class="text-muted">(dd/mm/yyyy)</small></label>
								<input type="text" class="form-control" id="dob" name="dob"
									placeholder="e.g. 14/07/2000">
							</div>

							<!-- Course & Gender -->
							<div class="form-section-title">Course Details</div>
							<div class="form-group">
								<label for="courses">Select Courses</label> <select
									name="courses" class="form-control" id="courses" multiple>
									<option>Java</option>
									<option>Python</option>
									<option>C++</option>
									<option>Spring</option>
									<option>Hibernate</option>
								</select> <small class="form-text text-muted">Hold Ctrl/Cmd to
									select multiple</small>
							</div>

							<div class="form-group">
								<label class="form-section-title">Gender</label>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="genderMale" name="gender" value="male"
										class="custom-control-input"> <label
										class="custom-control-label" for="genderMale">Male</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="genderFemale" name="gender"
										value="female" class="custom-control-input"> <label
										class="custom-control-label" for="genderFemale">Female</label>
								</div>
							</div>

							<!-- Address -->
							<div class="form-section-title">Address Details</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="street">Street</label> <input type="text"
										class="form-control" name="address.street" id="street"
										placeholder="e.g. MG Road">
								</div>
								<div class="form-group col-md-6">
									<label for="pin">Pincode</label> <input type="text"
										class="form-control" name="address.pin" id="pin"
										placeholder="e.g. 560001">
								</div>
							</div>
							                            <!-- Upload Section -->
                            <div class="form-section-title">Upload ID Proof</div>
                            <div class="form-group">
                                <input type="file" name="file" class="form-control-file"  />
                            </div>

							<!-- Type -->
							<div class="form-section-title">
								<label for="type">Student Type</label> <select
									class="form-control" name="type" id="type">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>
								</select>
							</div>

							<!-- Submit Button -->
							<div class="text-center mt-4">
								<button type="submit" class="btn btn-success btn-submit">
									<i class="fas fa-paper-plane mr-2"></i>Submit Form
								</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
</body>
</html>
