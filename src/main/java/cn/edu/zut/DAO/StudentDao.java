package cn.edu.zut.DAO;

import cn.edu.zut.Model.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StudentDao {

    List<Student> queryStudentList(String departmentname);

    Student loginStudent(@Param("sno") String UserName, @Param("password") String Password);

    int delStudentByID(@Param("id") int id);

    int ModifyStudent(Student student);

    Student queryStudentById(@Param("id") Integer id);

    Student queryStudentBySno(@Param("sno")String sno,@Param("departmentname")String departmentname);

    int addStudent(Student student);

    List<Student> queryStudentByName(@Param("name")String name,@Param("departmentname")String departmentname);


    Integer CountMajorByDept(String studentmajor);

    List<String> getAllMajorByDept(String departmentname);

    Integer countStuByGrade(@Param("grade")Integer grade,@Param("departmentname")String departmentname);

//    ====================================================================================
    Integer countByMajor(String studentmajor);

//    ================================================================================
//    分页查询
    List<Student> getlist(@Param("start") int start, @Param("count") int count);
    Integer getTotal();


}
