<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Registration Success</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />

  <style>
    body {
      background-color: #f4f6f9;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      font-family: 'Segoe UI', sans-serif;
    }
    .card {
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      background: white;
    }
    .success-icon {
      font-size: 60px;
      color: #28a745;
    }
    .btn-home {
      margin-top: 20px;
    }
  </style>
</head>
<body>
<img alt="my image" src="<c:url value= "/resources/image/${filename}"/>"/>
  <div class="card">
    <div class="success-icon">
      <i class="fas fa-check-circle"></i>
    </div>
    <h2 class="mt-3">Registration Successful!</h2>
    <p class="text-muted">Thank you for submitting your details. We have received your registration.</p>
    <a href="index.jsp" class="btn btn-primary btn-home">
      <i class="fas fa-arrow-left mr-2"></i>Back to Home
    </a>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
