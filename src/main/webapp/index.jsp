<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Home - Student Portal</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
  <!-- Font Awesome (optional for icons) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous"/>

  <style>
    body {
      background-color: #f0f4f8;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Segoe UI', sans-serif;
    }

    .home-card {
      background: #ffffff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .home-card h2 {
      margin-bottom: 25px;
      color: #343a40;
    }

    .btn-register {
      font-size: 18px;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <div class="home-card">
    <h2>Welcome to the Student Portal</h2>
    <p class="mb-4 text-muted">Click below to register for a new student account.</p>
    <a href="complex-form" class="btn btn-primary btn-register">
      <i class="fas fa-user-plus mr-2"></i>Go to Registration
    </a>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
