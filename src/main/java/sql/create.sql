

-- 학과 테이블
CREATE TABLE dept (
    dept_id VARCHAR(20) NOT NULL,
    dept_name VARCHAR(50) not null UNIQUE, -- 학과 이름 필수, 길이 증가
    CONSTRAINT PK_DEPT PRIMARY KEY (dept_id)
);

-- 교수 테이블
CREATE TABLE professor (
    professor_id VARCHAR(20) NOT NULL,
    professor_name VARCHAR(50) NOT NULL, -- 이름 필수
    professor_email VARCHAR(100) UNIQUE, -- 이메일 고유
    professor_birthday DATE,
    professor_phone VARCHAR(20), -- 전화번호 길이 조정
    professor_major VARCHAR(50),
    professor_img VARCHAR(255), -- 이미지 경로로 변경
    professor_password VARCHAR(255), -- 비밀번호 해시 저장
    CONSTRAINT PK_PROFESSOR PRIMARY KEY (professor_id)
);

-- 학생 테이블
CREATE TABLE student (
    student_id VARCHAR(20) NOT NULL,
    student_name VARCHAR(50) NOT NULL,
    student_num VARCHAR(20) NOT NULL UNIQUE, -- 학번 고유, VARCHAR로 변경
    dept_id VARCHAR(20) NOT NULL, -- 학과 참조
    student_email VARCHAR(100) UNIQUE,
    student_password VARCHAR(255),
    student_status varchar(20),
    student_birthday DATE,
    student_phone VARCHAR(20),
    student_img VARCHAR(255),
    CONSTRAINT PK_STUDENT PRIMARY KEY (student_id),
    CONSTRAINT FK_STUDENT_DEPT_ID FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
);

-- 강의 테이블
CREATE TABLE course (
    course_id VARCHAR(20) NOT NULL,
    dept_id VARCHAR(20) NOT NULL, -- 학과 참조
    professor_id VARCHAR(20) NOT NULL,
    course_name VARCHAR(100) NOT NULL unique,
    course_status varchar(20) not null,
    course_max_cnt INT , -- 최대 정원 추가
    course_score INT NOT NULL, -- 학점 추가
    credit_category varchar(30) NOT NULL,
    course_plan TEXT,
    CONSTRAINT PK_COURSE PRIMARY KEY (course_id),
    CONSTRAINT FK_COURSE_DEPT FOREIGN KEY (dept_id) REFERENCES dept(dept_id),
    CONSTRAINT FK_COURSE_PROFESSOR FOREIGN KEY (professor_id) REFERENCES professor(professor_id) 
);

-- 성적테이블
CREATE TABLE score (
	student_id	varchar(20)	NULL,
	score_id	varchar(20)	NULL,
	course_id	 varchar(20)	NOT NULL,
	professor_id 	varchar(20)	NOT NULL,
	score_end	varchar(20)	NULL,
	score_level	varchar(20)	NULL,
	score_etc	varchar(50)	NULL,
	dept_id	varchar(30)	NOT NULL,
	CONSTRAINT PK_SCORE PRIMARY KEY (score_id),
    CONSTRAINT FK_SCORE_STUDENT FOREIGN KEY (student_id) REFERENCES student(student_id) ,
    CONSTRAINT FK_SCORE_COURSE FOREIGN KEY (course_id) REFERENCES course(course_id) ,
    CONSTRAINT FK_SCORE_PROFESSOR FOREIGN KEY (professor_id) REFERENCES professor(professor_id) ,
    CONSTRAINT FK_SCORE_DEPT FOREIGN KEY (dept_id) REFERENCES dept(dept_id) ,
    CONSTRAINT UK_SCORE UNIQUE (student_id, course_id) -- 동일 학생의 동일 강의 중복 점수 방지
);

-- 강의 시간표 테이블
CREATE TABLE course_time (
    course_time_id VARCHAR(20) NOT NULL,
    professor_id varchar(20) not null,
    course_id VARCHAR(20) NOT NULL,
    course_time_yoil ENUM('월', '화', '수', '목', '금', '토', '일'),
    course_time_start TIME, -- DATETIME → TIME으로 변경
    course_time_end TIME,
    CONSTRAINT PK_COURSE_TIME PRIMARY KEY (course_time_id),
    CONSTRAINT FK_COURSE_TIME_COURSE FOREIGN KEY (course_id) REFERENCES course(course_id) ,
    CONSTRAINT FK_COURSE_TIME_professor FOREIGN KEY (professor_id) REFERENCES professor(professor_id) 
);

-- 수강신청 테이블
CREATE TABLE registration (
    registration_id VARCHAR(20) NOT NULL,
    student_id VARCHAR(20) NOT NULL,
    course_id VARCHAR(20) NOT NULL,
    professor_id VARCHAR(20) NOT NULL,
    registration_status varchar(30),
    registration_create DATETIME,
    registration_update DATETIME,
    CONSTRAINT PK_REGISTRATION PRIMARY KEY (registration_id),
    CONSTRAINT FK_REGISTRATION_STUDENT FOREIGN KEY (student_id) REFERENCES student(student_id) ,
    CONSTRAINT FK_REGISTRATION_COURSE FOREIGN KEY (course_id) REFERENCES course(course_id),
    CONSTRAINT FK_REGISTRATION_PROFESSOR FOREIGN KEY (professor_id) REFERENCES professor(professor_id) ,
    CONSTRAINT UK_REGISTRATION UNIQUE (student_id, course_id) -- 중복 등록 방지
);

-- 출석 테이블
CREATE TABLE attendance (
    attendance_id VARCHAR(20) NOT NULL, -- 기본키 추가
    attendance_date DATE NOT NULL,
    status varchar(30), -- 영어로 통일
    professor_id varchar(20),
    attendance_remarks VARCHAR(200), -- 사유
    student_id VARCHAR(20) NOT NULL,
    course_id VARCHAR(20) NOT NULL,
    CONSTRAINT PK_ATTENDANCE PRIMARY KEY (attendance_id),
    CONSTRAINT FK_ATTENDANCE_STUDENT FOREIGN KEY (student_id) REFERENCES student(student_id) ,
    CONSTRAINT FK_ATTENDANCE_COURSE FOREIGN KEY (course_id) REFERENCES course(course_id),
    CONSTRAINT FK_ATTENDANCE_professor FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
    CONSTRAINT UK_ATTENDANCE UNIQUE (attendance_date, course_id, student_id) -- 중복 출석 방지
);

-- 게시판 테이블
CREATE TABLE post (
    post_id VARCHAR(20) NOT NULL,
    author_id VARCHAR(20) NOT NULL, -- 작성자ID
    post_title VARCHAR(100) NOT NULL,
    post_content TEXT NOT NULL,
    post_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    post_updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    post_group INT DEFAULT 0,
    post_group_level INT DEFAULT 0,
    post_group_step INT DEFAULT 0,
    post_file VARCHAR(255), -- 파일 경로
    post_read_count INT DEFAULT 0
    
);

-- 공지사항 테이블
CREATE TABLE notice (
    notice_id VARCHAR(20) NOT NULL, -- 기본키 NOT NULL
    writer_id VARCHAR(20) NOT NULL,
    notice_title VARCHAR(100) NOT NULL,
    notice_content TEXT NOT NULL,
    notice_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    notice_updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    notice_file VARCHAR(255),
    notice_read_count INT DEFAULT 0
);




alter table post
add CONSTRAINT PK_POST PRIMARY KEY (post_id);



CREATE TABLE post_comment (
    comment_id VARCHAR(20) NOT NULL,
    post_id VARCHAR(20) NOT NULL,
    writer_id VARCHAR(20) NOT NULL,
    comment_content VARCHAR(500) NOT NULL,
    parent_comment_id VARCHAR(20) DEFAULT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT PK_NOTICE_COMMENT PRIMARY KEY (comment_id),
    CONSTRAINT FK_NOTICE_COMMENT_POST FOREIGN KEY (post_id) REFERENCES post(post_id) ON DELETE CASCADE,
    CONSTRAINT FK_NOTICE_COMMENT_PARENT FOREIGN KEY (parent_comment_id) REFERENCES post_comment(comment_id) ON DELETE CASCADE
);



