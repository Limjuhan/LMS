package domain;

import java.util.Date;

public class Professor {
    private String professorId;
    private String professorName;
    private String professorEmail;
    private Date professorBirthday;
    private String professorPhone;
    private String professorMajor;
    private String professorImg;
    private String professorPassword;

    // Getters and Setters
    public String getProfessorId() { return professorId; }
    public void setProfessorId(String professorId) { this.professorId = professorId; }
    public String getProfessorName() { return professorName; }
    public void setProfessorName(String professorName) { this.professorName = professorName; }
    public String getProfessorEmail() { return professorEmail; }
    public void setProfessorEmail(String professorEmail) { this.professorEmail = professorEmail; }
    public Date getProfessorBirthday() { return professorBirthday; }
    public void setProfessorBirthday(Date professorBirthday) { this.professorBirthday = professorBirthday; }
    public String getProfessorPhone() { return professorPhone; }
    public void setProfessorPhone(String professorPhone) { this.professorPhone = professorPhone; }
    public String getProfessorMajor() { return professorMajor; }
    public void setProfessorMajor(String professorMajor) { this.professorMajor = professorMajor; }
    public String getProfessorImg() { return professorImg; }
    public void setProfessorImg(String professorImg) { this.professorImg = professorImg; }
    public String getProfessorPassword() { return professorPassword; }
    public void setProfessorPassword(String professorPassword) { this.professorPassword = professorPassword; }
}