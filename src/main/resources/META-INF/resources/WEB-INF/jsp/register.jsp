<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en"
      xmlns:th="http://www.thymeleaf.org"
>
<head>
    <meta charset="UTF-8">
    <title>Registration and Login System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" th:href="@{/index}">Registration and Login System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" th:href="@{/login}">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<br /><br /><br />
<div class="container">
    <div class="row col-md-8 offset-md-2">
        <div class="card">
            <div class="card-header">
                <h2 class="text-center">Registration</h2>
            </div>
            <div th:if="${param.success}">
                <div class="alert alert-info">
                    You have successfully registered our app!
                </div>
            </div>
            <div class="card-body">
                <form
                        method="post"
                        role="form"
                        th:action="@{/register/save}"
                        th:object="${user}"
                >
                    <div class="form-group mb-3">
                        <label class="form-label">First Name</label>
                        <input
                                class="form-control"
                                id="firstName"
                                name="firstName"
                                placeholder="Enter first name"
                                th:field="*{firstName}"
                                type="text"
                        />
                        <p th:errors = "*{firstName}" class="text-danger"
                           th:if="${fields.hasErrors('firstName')}"></p>
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label">Last Name</label>
                        <input
                                class="form-control"
                                id="lastName"
                                name="lastName"
                                placeholder="Enter last name"
                                th:field="*{lastName}"
                                type="text"
                        />
                        <p th:errors = "*{lastName}" class="text-danger"
                           th:if="${fields.hasErrors('lastName')}"></p>
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label">Email</label>
                        <input
                                class="form-control"
                                id="email"
                                name="email"
                                placeholder="Enter email address"
                                th:field="*{email}"
                                type="email"
                        />
                        <p th:errors = "*{email}" class="text-danger"
                           th:if="${fields.hasErrors('email')}"></p>
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label">Password</label>
                        <input
                                class="form-control"
                                id="password"
                                name="password"
                                placeholder="Enter password"
                                th:field="*{password}"
                                type="password"
                        />
                        <p th:errors = "*{password}" class="text-danger"
                           th:if="${fields.hasErrors('password')}"></p>
                    </div>
                    <form method="post" action="/your-registration-endpoint">
                        <!-- your form fields go here -->
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Register</button>
                            <span>Already registered? <a th:href="@{/login}">Login here</a></span>
                        </div>
                    </form>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>