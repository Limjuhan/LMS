package domain;

public class Course {
    private String courseId;
    private String deptId;
    private String professorId;
    private String courseName;
    private String courseStatus;
    private Integer courseMaxCnt;
    private Integer courseScore;
    private String creditCategory;
    private String coursePlan;

    // Getters and Setters
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getDeptId() { return deptId; }
    public void setDeptId(String deptId) { this.deptId = deptId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getCourseName() { return courseName; }
    public void setCourseName(String courseName) { this.courseName = courseName; }
    public String getCourseStatus() { return courseStatus; }
    public void setCourseStatus(String courseStatus) { this.courseStatus = courseStatus; }
    public Integer getCourseMaxCnt() { return courseMaxCnt; }
    public void setCourseMaxCnt(Integer courseMaxCnt) { this.courseMaxCnt = courseMaxCnt; }
    public Integer getCourseScore() { return courseScore; }
    public void setCourseScore(Integer courseScore) { this.courseScore = courseScore; }
    public String getCreditCategory() { return creditCategory; }
    public void setCreditCategory(String creditCategory) { this.creditCategory = creditCategory; }
    public String getCoursePlan() { return coursePlan; }
    public void setCoursePlan(String coursePlan) { this.coursePlan = coursePlan; }
}