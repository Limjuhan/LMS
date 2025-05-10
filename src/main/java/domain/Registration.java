package domain;

import java.util.Date;

public class Registration {
    private String registrationId;
    private String studentId;
    private String courseId;
    private String professorId;
    private String registrationStatus;
    private Date registrationCreate;
    private Date registrationUpdate;

    // Getters and Setters
    public String getRegistrationId() { return registrationId; }
    public void setRegistrationId(String registrationId) { this.registrationId = registrationId; }
    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getRegistrationStatus() { return registrationStatus; }
    public void setRegistrationStatus(String registrationStatus) { this.registrationStatus = registrationStatus; }
    public Date getRegistrationCreate() { return registrationCreate; }
    public void setRegistrationCreate(Date registrationCreate) { this.registrationCreate = registrationCreate; }
    public Date getRegistrationUpdate() { return registrationUpdate; }
    public void setRegistrationUpdate(Date registrationUpdate) { this.registrationUpdate = registrationUpdate; }
}