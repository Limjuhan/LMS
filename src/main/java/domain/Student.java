package domain;

import java.util.Date;

public class Student {
    private String studentId;
    private String studentName;
    private String studentNum;
    private String deptId;
    private String studentEmail;
    private String studentPassword;
    private String studentStatus;
    private Date studentBirthday;
    private String studentPhone;
    private String studentImg;

    // Getters and Setters
    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }
    public String getStudentNum() { return studentNum; }
    public void setStudentNum(String studentNum) { this.studentNum = studentNum; }
    public String getDeptId() { return deptId; }
    public void setDeptId(String deptId) { this.deptId = deptId; }
    public String getStudentEmail() { return studentEmail; }
    public void setStudentEmail(String studentEmail) { this.studentEmail = studentEmail; }
    public String getStudentPassword() { return studentPassword; }
    public void setStudentPassword(String studentPassword) { this.studentPassword = studentPassword; }
    public String getStudentStatus() { return studentStatus; }
    public void setStudentStatus(String studentStatus) { this.studentStatus = studentStatus; }
    public Date getStudentBirthday() { return studentBirthday; }
    public void setStudentBirthday(Date studentBirthday) { this.studentBirthday = studentBirthday; }
    public String getStudentPhone() { return studentPhone; }
    public void setStudentPhone(String studentPhone) { this.studentPhone = studentPhone; }
    public String getStudentImg() { return studentImg; }
    public void setStudentImg(String studentImg) { this.studentImg = studentImg; }
}