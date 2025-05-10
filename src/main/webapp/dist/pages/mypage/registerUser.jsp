<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            overflow-y: auto;
        }
        .card {
            border: none;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
            padding: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
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
    </style>
</head>
<body>
    <div class="card">
        <h4 class="text-center mb-4">회원가입</h4>
        <form action="registerUserChk" name="f" method="post" onsubmit="return input_chk(this)">
                <input type="hidden" name="picture" value=""><!-- 업로드된 이미지의 이름이 들어갈태그 -->
        <div class="mb-3">
            <img src="" width="100" height="120"  id="pic"><br>
            <font size="1"><a href="javascript:win_upload()">사진등록</a></font>
        </div>
        <div class="mb-3">
            <label for="id" class="form-label">아이디</label>
            <input type="text" class="form-control" id="id" name="id" value="가입시 자동부여" readonly>
        </div>
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력">
        </div>
        <div class="mb-3">
            <label for="birth" class="form-label">생년월일</label>
            <input type="date" class="form-control" id="birth" name="birth"  placeholder="생년월일">
        </div>
        <div class="mb-3">
            <label class="form-label">직급</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="position" id="pro" value="pro" checked>
                <label class="form-check-label" for="pro">교수</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="position" id="stu" value="stu">
                <label class="form-check-label" for="stu">학생</label>
            </div>
        </div>
        <div class="mb-3">
            <label for="major" class="form-label">전공 선택</label>
            <select class="form-select" id="major">
                <option selected>전공</option>
                <option value="computer">컴퓨터공학과</option>
                <option value="electronics">전자공학과</option>
                <option value="business">경영학과</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 입력"  onkeyup="pChk(this)">
             <font id="passValid"></font>
            
        </div>
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">비밀번호 확인</label>
            <input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호 확인" onkeyup="cpChk(this)">
            <font id="pEqulasCp"></font>
           
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">전화번호</label>
            <input type="text" class="form-control" id="tel" name="tel" placeholder="전화번호 입력" onkeyup="tChk(this)">
            <font id='telValid'></font>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">이메일</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="이메일 입력" onkeyup="eChk(this)">
            <font id='emailValid'></font>
        </div>
        <button class="btn btn-custom w-100 mb-3">가입</button>
        <div class="text-center">
            <a href="doLogin" class="btn-link-custom">로그인 화면으로 돌아가기</a>
        </div> 
        </form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    function win_upload(){
    	let op = "width=500,height=500 ,top=50 ,left=150";
    	open("registerImg.jsp","",op);
    	//pictureForm.jsp를 연다
    }
    
    
    function pChk(p){
    	const passVal = document.querySelector("#passValid");
    	if(!valid(p.value,'pass')){
    		passVal.innerHTML= '특수문자,영어,숫자포함 8~16자리';
    		passVal.style.color='red';
    	}
    	else{
    		passVal.innerHTML= '유효한비밀번호';
    		passVal.style.color='green';
    	}
    }
    
    function cpChk(cp){ //비밀번호와 재입력한비밀번호가 같은지?
		let  p = document.querySelector("#password").value;
		let  pEqulasCp = document.querySelector("#pEqulasCp");
		if(!(p===cp.value)){
			pEqulasCp.innerHTML = '비밀번호가 일치하지않아요';
		}
		else{
			pEqulasCp.innerHTML = '';
		}

    }
    
    function tChk(t){
    	const telVal = document.querySelector("#telValid");
    	if(!valid(t.value,'tel')){
    		telVal.innerHTML= '올바른 휴대폰번호입력바람';
    		telVal.style.color='red';
    	}
    	else{
    		telVal.innerHTML= '유효한 번호';
    		telVal.style.color='green';
    	}
    }
    function eChk(e){
    	const emailVal = document.querySelector("#emailValid");
    	if(!valid(e.value,'email')){
    		emailVal.innerHTML= '올바른 Email형식작성하세요';
    		emailVal.style.color='red';
    	}
    	else{
    		emailVal.innerHTML= '유효한E-mail';
    		emailVal.style.color='green';
    	}
    }
    
    
    
    //검증부분
    function valid(text,type){
    	if(type==='email'){//넘어온값과 name=email의 값이 동일할때
    		const regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._]+\.[a-zA-Z]{2,}$/;
    		return regex.test(text);
    	}
    	else if(type==='tel'){ //넘어온값과 name=tel의 값이 동일할때
    		const regex = /^(01[0126789])[ -]?\d{3,4}[ -]?\d{4}$/;
    		return regex.test(text);
    	}
    	else if(type==='pass'){ //비밀번호유효성검사
    		const regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,16}$/;
    		//(?=.*[A-Za-z]) → 문자열 어딘가에 영문자가 있어야 해 (확인만)
    		//\W : 특수문자 , [A-Za-z\d\W_]{8,16} : 해당문자들이 8개~16개존재해야함
    		return regex.test(text);
    	}
    }
    
    function input_check(f){
    	return true;
    }
    
    </script>
</body>
</html>