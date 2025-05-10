<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            border: none;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 600px;
            padding: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: #ffffff;
            border: none;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
        .btn-link-custom {
            color: #007bff;
            text-decoration: none;
        }
        .btn-link-custom:hover {
            text-decoration: underline;
        }
        .btn-primary {
            margin: 0 auto;
            width: 80%;
            display: block;
        }
        .ldb-text {
            font-weight: bold;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="card">
        <h4 class="text-center mb-4">로그인</h4>
        <div class="mb-3">
            <label for="id" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" placeholder="아이디 입력" >
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" placeholder="비밀번호 입력" >
        </div>

        <button class="btn btn-primary"><span class="ldb-text">LDB</span> 로그인</button>
        <br>
        <div class="d-flex justify-content-between">
            <a href="findId" class="btn-link-custom">아이디 찾기</a>
            <a href="findPw" class="btn-link-custom">비밀번호 찾기</a>
            <a href="registerUser" class="btn-link-custom">회원가입</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>