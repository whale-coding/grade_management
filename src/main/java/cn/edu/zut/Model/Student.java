package cn.edu.zut.Model;

import org.springframework.stereotype.Component;

@Component
public class Student {
    private int id;
    private String sno;
    private int grade;
    private String enrollmentdate;
    private String password;
    private String name;
    private String sex;
    private int age;
    private String departmentname;
    private String studentmajor;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }


    public String getEnrollmentdate() {
        return enrollmentdate;
    }

    public void setEnrollmentdate(String enrollmentdate) {
        this.enrollmentdate = enrollmentdate;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getStudentmajor() {
        return studentmajor;
    }

    public void setStudentmajor(String studentmajor) {
        this.studentmajor = studentmajor;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", sno='" + sno + '\'' +
                ", grade=" + grade +
                ", enrollmentdate='" + enrollmentdate + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", departmentname='" + departmentname + '\'' +
                ", studentmajor='" + studentmajor + '\'' +
                '}';
    }
}
