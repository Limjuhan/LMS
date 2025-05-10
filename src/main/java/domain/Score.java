package domain;

public class Score {
    private String studentId;
    private String scoreId;
    private String courseId;
    private String professorId;
    private String scoreEnd;
    private String scoreLevel;
    private String scoreEtc;
    private String deptId;

    // Getters and Setters
    public String getStudentId() { return studentId; }
    public void setStudentId(String studentId) { this.studentId = studentId; }
    public String getScoreId() { return scoreId; }
    public void setScoreId(String scoreId) { this.scoreId = scoreId; }
    public String getCourseId() { return courseId; }
    public void setCourseId(String courseId) { this.courseId = courseId; }
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getScoreEnd() { return scoreEnd; }
    public void setScoreEnd(String scoreEnd) { this.scoreEnd = scoreEnd; }
    public String getScoreLevel() { return scoreLevel; }
    public void setScoreLevel(String scoreLevel) { this.scoreLevel = scoreLevel; }
    public String getScoreEtc() { return scoreEtc; }
    public void setScoreEtc(String scoreEtc) { this.scoreEtc = scoreEtc; }
    public String getDeptId() { return deptId; }
    public void setDeptId(String deptId) { this.deptId = deptId; }
}