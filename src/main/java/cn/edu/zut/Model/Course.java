package cn.edu.zut.Model;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class Course {
    private int id;
    private String cno;
    private String name;
    private int credit;
    private String departmentname;
    private String examdate;
    private String semester;
    private String type;
    private String nature;
    private String tno;
    private String tname;

}
