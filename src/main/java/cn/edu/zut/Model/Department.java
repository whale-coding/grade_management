package cn.edu.zut.Model;

import org.springframework.stereotype.Component;

@Component
public class Department {
    private int id;
    private String departmentname;
    private String teachingsecretaryname;
    private String teachingsecretaryid;
    private String password;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getTeachingsecretaryname() {
        return teachingsecretaryname;
    }

    public void setTeachingsecretaryname(String teachingsecretaryname) {
        this.teachingsecretaryname = teachingsecretaryname;
    }

    public String getTeachingsecretaryid() {
        return teachingsecretaryid;
    }

    public void setTeachingsecretaryid(String teachingsecretaryid) {
        this.teachingsecretaryid = teachingsecretaryid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Department{" +
                "id=" + id +
                ", departmentname='" + departmentname + '\'' +
                ", teachingsecretaryname='" + teachingsecretaryname + '\'' +
                ", teachingsecretaryid='" + teachingsecretaryid + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
