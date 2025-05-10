package model.dto.learning_support;

public class CourseDto {
    private String courseId;
    private String deptId;
    private String professorId;
    private String professorName;
    private String courseName;
    private String creditCategory;
    private Integer courseScore;
    private String coursePlan;
    private String timeSlot; // course_time에서 계산된 값 (예: "09:00-10:50")

    // Getters and Setters
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getDeptId() { return deptId; }
    public void setDeptId(String deptId) { this.deptId = deptId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getProfessorName() { return professorName; }
    public void setProfessorName(String professorName) { this.professorName = professorName; }
    public String getCourseName() { return courseName; }
    public void setCourseName(String courseName) { this.courseName = courseName; }
    public String getCreditCategory() { return creditCategory; }
    public void setCreditCategory(String creditCategory) { this.creditCategory = creditCategory; }
    public Integer getCourseScore() { return courseScore; }
    public void setCourseScore(Integer courseScore) { this.courseScore = courseScore; }
    public String getCoursePlan() { return coursePlan; }
    public void setCoursePlan(String coursePlan) { this.coursePlan = coursePlan; }
    public String getTimeSlot() { return timeSlot; }
    public void setTimeSlot(String timeSlot) { this.timeSlot = timeSlot; }
}