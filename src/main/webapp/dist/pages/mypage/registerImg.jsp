<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecture Registration</title>
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
        .container {
            max-width: 800px;
        }
        .card {
            border: none;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
        }
        .btn-custom {
            background-color: #dc3545;
            color: #ffffff;
            border: none;
        }
        .btn-custom:hover {
            background-color: #c82333;
        }
        #preview {
            max-width: 100%;
            max-height: 300px;
            object-fit: contain;
            margin-bottom: 15px;
            border-radius: 5px;
        }
        .form-label {
            font-weight: 500;
        }
        .form-control {
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h4 class="text-center mb-4">사진 업로드</h4>
            <div class="text-center">
                <img id="preview" src="" alt="이미지 미리보기" class="img-fluid">
            </div>
            <form action="picture" method="post" enctype="multipart/form-data" class="mt-3">
                <div class="mb-3">
                    <label for="imageFile" class="form-label">이미지 선택</label>
                    <input type="file" name="picture" id="imageFile" accept="image/*" class="form-control">
                </div>
                <div class="text-center">
                    <input type="submit" value="사진 등록" class="btn btn-secondary">
                </div>
            </form>
        </div>
    </div>

    <script type="text/javascript">
        let imageFile = document.querySelector('#imageFile');
        let preview = document.querySelector('#preview');
        let submit = document.querySelector(".btn-secondary");
        
        imageFile.addEventListener('change', function(e) {
            let get_file = e.target.files;
            
            if (get_file && get_file.length > 0) { //파일이선택됐다면 회색->초록색
                submit.classList.remove('btn-secondary');
                submit.classList.add('btn-success');
            }
            
            
            let reader = new FileReader();

            reader.onload = (function(Img) {
                return function(e) {
                    Img.src = e.target.result;
                }
            })(preview);

            if (get_file) {
                reader.readAsDataURL(get_file[0]);
            }
        });
        
        
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>