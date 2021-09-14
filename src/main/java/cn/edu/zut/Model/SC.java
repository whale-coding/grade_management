package cn.edu.zut.Model;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class SC {
    private int id;
    private String sno;
    private String cno;
    private String type;
    private float grades;

    private Student student;
    private Course course;


}
