<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="application"/>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>수강신청</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f7fafc;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        .table th, .table td {
            border: 1px solid #e2e8f0;
            padding: 10px;
            text-align: left;
        }
        .table th {
            background: #edf2f7;
            font-weight: 600;
        }
        .btn {
            padding: 8px 16px;
            border-radius: 4px;
            transition: background 0.2s;
        }
        .btn-primary {
            background: #3182ce;
            color: white;
        }
        .btn-primary:hover {
            background: #2b6cb0;
        }
        .btn-secondary {
            background: #e2e8f0;
            color: #4a5568;
        }
        .btn-secondary:hover {
            background: #cbd5e0;
        }
    </style>
</head>
<body>
<div class="card">
    <h2 class="text-xl font-semibold mb-4">수강신청</h2>
    <!-- 검색 폼 -->
    <form action="/learning_support/register" method="get" class="grid grid-cols-2 gap-4 mb-4">
        <div>
            <label>대학구분</label>
            <select name="college" id="collegeSelect" class="border rounded p-2 w-full" onchange="updateDepartments()">
                <option value="">전체</option>
                <c:forEach var="college" items="${colleges}">
                    <option value="${college}">${college}</option>
                </c:forEach>
            </select>
        </div>
        <div>
            <label>학과</label>
            <select name="deptId" id="deptSelect" class="border rounded p-2 w-full">
                <option value="">소속대학을 먼저 선택해주세요.</option>
                <c:forEach var="dept" items="${initialDepartments}">
                    <option value="${dept.deptId}">${dept.deptName}</option>
                </c:forEach>
            </select>
        </div>
        <div>
            <label>교과목번호</label>
            <input type="text" name="courseId" class="border rounded p-2 w-full" placeholder="교과목번호 입력">
        </div>
        <div>
            <label>교과목명</label>
            <input type="text" name="courseName" class="border rounded p-2 w-full" placeholder="교과목명 입력">
        </div>
        <div>
            <button type="submit" class="btn btn-primary">검색</button>
        </div>
    </form>

    <!-- 개설 과목 목록 -->
    <p><strong>전체 개설과목:</strong> ${courses.size()}건</p>
    <table class="table">
        <thead>
            <tr>
                <th>상태</th>
                <th>이수구분</th>
                <th>교과목번호</th>
                <th>교과목명</th>
                <th>교수명</th>
                <th>학점</th>
                <th>시간</th>
                <th>강의계획서</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${courses}">
                <tr>
                    <td>
                        <form action="/learning_support/add" method="post">
                            <input type="hidden" name="courseId" value="${course.courseId}">
                            <button type="submit" class="btn btn-primary">추가</button>
                        </form>
                    </td>
                    <td>${course.creditCategory}</td>
                    <td>${course.courseId}</td>
                    <td>${course.courseName}</td>
                    <td>${course.professorName}</td>
                    <td>${course.courseScore}</td>
                    <td>${course.timeSlot}</td>
                    <td>
                        <c:if test="${not empty course.coursePlan}">
                            <a href="${course.coursePlan}" target="_blank" class="btn btn-secondary">미리보기</a>
                        </c:if>
                        <c:if test="${empty course.coursePlan}">
                            <span>-</span>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- 신청 내역 -->
    <h3 class="text-lg font-semibold mt-4">신청내역</h3>
    <table class="table">
        <thead>
            <tr>
                <th>이수구분</th>
                <th>교과목번호</th>
                <th>교과목명</th>
                <th>학점</th>
                <th>담당교수</th>
                <th>시간</th>
                <th>삭제</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="registration" items="${registrations}">
                <tr>
                    <td>${registration.creditCategory}</td>
                    <td>${registration.courseId}</td>
                    <td>${registration.courseName}</td>
                    <td>${registration.courseScore}</td>
                    <td>${registration.professorName}</td>
                    <td>${registration.timeSlot}</td>
                    <td>
                        <form action="/learning_support/delete" method="post">
                            <input type="hidden" name="registrationId" value="${registration.registrationId}">
                            <button type="submit" class="btn btn-secondary text-red-600">삭제</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<script>

	//페이지 로드 시 초기 대학 및 학과 설정
	$(document).ready(function() {
		$.ajax({
			url: "${path}/learning_support/colleges",
			type:"get",
			success: function(data) {
				var arr = JSON.parse(data)
				$.each(arr, function(i, item) {
					$("#collegeSelect").append(function() {
						return "<option>" + item + "</option>"
					})
				})
			},
			error: function(e) {
				alert("SERVER_ERROR:" + e.status);
			}
		});
		
	});
    // 학과 동적 업데이트 함수
    function updateDepartments() {
        var college = $('#collegeSelect').val();
        $.ajax({
            url: '/learning_support/departments',
            method: 'GET',
            data: { college: college },
            success: function(data) {
                var deptSelect = $('#deptSelect');
                deptSelect.empty();
                deptSelect.append('<option value="">전체</option>');
                $.each(data, function(index, dept) {
                    deptSelect.append('<option value="' + dept.deptId + '">' + dept.deptName + '</option>');
                });
            },
            error: function(xhr) {
                alert('학과 목록을 불러오지 못했습니다: ' + xhr.responseText);
            }
        });
    }

    
</script>
</body>
</html>