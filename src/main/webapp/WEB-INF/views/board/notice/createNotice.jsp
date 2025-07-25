<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>공지사항 등록</title>
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
</head>
<body>
    <div class="container-fluid">
        <div class="card shadow-sm">
            <div class="card-header"><h3 class="card-title fw-bold">공지사항 등록</h3></div>
            <form id="noticeForm">
                <div class="card-body">
                    <div class="mb-3">
                        <label for="noticeTitle" class="form-label">제목</label>
                        <input type="text" class="form-control" id="noticeTitle">
                        <div class="invalid-feedback" id="noticeTitle-error"></div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">내용</label>
                        <div id="editor"></div>
                        <div class="invalid-feedback d-block" id="noticeContent-error"></div>
                    </div>
                    <div class="mb-3">
                        <label for="noticePassword" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="noticePassword">
                        <div class="invalid-feedback" id="noticePassword-error"></div>
                    </div>
                    <div class="mb-3">
                        <label for="noticeFile" class="form-label">첨부파일</label>
                        <input type="file" class="form-control" id="noticeFile">
                    </div>
                </div>
                <div class="card-footer text-end">
                    <a href="/notice/getNotices" class="btn btn-secondary">취소</a>
                    <button type="submit" class="btn btn-primary">등록</button>
                </div>
            </form>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0.min.js"></script>
    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <script>
        $(document).ready(function () {
            const editor = new toastui.Editor({
                el: document.querySelector('#editor'),
                height: '400px',
                initialEditType: 'wysiwyg',
                previewStyle: 'vertical'
            });

            function clearErrors() {
                $(".form-control").removeClass("is-invalid");
                $(".invalid-feedback").text("");
            }

            function displayErrors(errors) {
                clearErrors();
                for (const field in errors) {
                    $("#" + field).addClass("is-invalid");
                    $("#" + field + "-error").text(errors[field]).show();
                }
            }

            $('#noticeForm').on('submit', function (e) {
                e.preventDefault();
                clearErrors();
                
                const formData = new FormData();
                const noticeData = {
                    noticeTitle: $('#noticeTitle').val(),
                    noticeContent: editor.getHTML(),
                    noticePassword: $('#noticePassword').val()
                };

                formData.append('notice', new Blob([JSON.stringify(noticeData)], { type: 'application/json' }));
                
                const fileInput = $('#noticeFile')[0];
                if (fileInput.files.length > 0) {
                    formData.append('file', fileInput.files[0]);
                }

                $.ajax({
                    url: '/api/notice/write',
                    type: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function (response) {
                        if (response.redirectUrl) {
                            window.location.href = response.redirectUrl;
                        }
                    },
                    error: function (xhr) {
                        if (xhr.status === 400 && xhr.responseJSON && xhr.responseJSON.data) {
                            displayErrors(xhr.responseJSON.data);
                        } else {
                            const errorMsg = xhr.responseJSON ? xhr.responseJSON.error : "서버 오류";
                            alert('저장 실패: ' + errorMsg);
                        }
                    }
                });
            });
        });
    </script>
</body>
</html>