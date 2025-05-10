package model.dto.learning_support;

public class RegistrationDto {
    private String registrationId;
    private String studentId;
    private String courseId;
    private String professorId;
    private String courseName;
    private String creditCategory;
    private Integer courseScore;
    private String professorName;
    private String timeSlot;

    // Getters and Setters
    public String getRegistrationId() { return registrationId; }
    public void setRegistrationId(String registrationId) { this.registrationId = registrationId; }
    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getCourseName() { return courseName; }
    public void setCourseName(String courseName) { this.courseName = courseName; }
    public String getCreditCategory() { return creditCategory; }
    public void setCreditCategory(String creditCategory) { this.creditCategory = creditCategory; }
    public Integer getCourseScore() { return courseScore; }
    public void setCourseScore(Integer courseScore) { this.courseScore = courseScore; }
    public String getProfessorName() { return professorName; }
    public void setProfessorName(String professorName) { this.professorName = professorName; }
    public String getTimeSlot() { return timeSlot; }
    public void setTimeSlot(String timeSlot) { this.timeSlot = timeSlot; }
}