package domain;

import java.util.Date;

public class Attendance {
    private String attendanceId;
    private Date attendanceDate;
    private String status;
    private String professorId;
    private String attendanceRemarks;
    private String studentId;
    private String courseId;

    // Getters and Setters
    public String getAttendanceId() { return attendanceId; }
    public void setAttendanceId(String attendanceId) { this.attendanceId = attendanceId; }
    public Date getAttendanceDate() { return attendanceDate; }
    public void setAttendanceDate(Date attendanceDate) { this.attendanceDate = attendanceDate; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getAttendanceRemarks() { return attendanceRemarks; }
    public void setAttendanceRemarks(String attendanceRemarks) { this.attendanceRemarks = attendanceRemarks; }
    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
}