package domain;

import java.sql.Time;

public class CourseTime {
    private String courseTimeId;
    private String professorId;
    private String courseId;
    private String courseTimeYoil; // ENUM('월', '화', '수', '목', '금', '토', '일')
    private Time courseTimeStart;
    private Time courseTimeEnd;

    // Getters and Setters
    public String getCourseTimeId() { return courseTimeId; }
    public void setCourseTimeId(String courseTimeId) { this.courseTimeId = courseTimeId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getCourseTimeYoil() { return courseTimeYoil; }
    public void setCourseTimeYoil(String courseTimeYoil) { this.courseTimeYoil = courseTimeYoil; }
    public Time getCourseTimeStart() { return courseTimeStart; }
    public void setCourseTimeStart(Time courseTimeStart) { this.courseTimeStart = courseTimeStart; }
    public Time getCourseTimeEnd() { return courseTimeEnd; }
    public void setCourseTimeEnd(Time courseTimeEnd) { this.courseTimeEnd = courseTimeEnd; }
}