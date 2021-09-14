package cn.edu.zut.Service;

import cn.edu.zut.Model.Student;
import cn.edu.zut.vo.StuVo1;
import cn.edu.zut.vo.StuVo2;
import cn.edu.zut.vo.StuVo3;

import java.util.List;

public interface StudentService {
    List<Student> queryStudentList(String departmentname);
    Student loginStudent(String UserName,String Password);


    int delStudentByID(int id);

    int ModifyStudent(Student student);

    Student queryStudentById(Integer id);

    int addStudent(Student student);

    List<Student> queryStudentByName(String name,String departmentname);

    Student queryStudentBySno(String sno,String departmentname);

    StuVo1 getStuVo1(String departmentname);

    List<StuVo2> getAllStuVo2(String departmentname);

//  =================================================================
    List<StuVo3> getStuVo3(String departmentname);

//===============================================================================
    List<Student> getlist(int start, int count); //获取用户list
    Integer getTotal(); //获取用户总数

}
