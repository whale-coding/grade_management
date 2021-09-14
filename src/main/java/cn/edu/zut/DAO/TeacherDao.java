package cn.edu.zut.DAO;

import cn.edu.zut.Model.Teacher;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TeacherDao {
    List<Teacher> queryTeacherList(String departmentname);

    List<Teacher> findByTnoOrDepartmentName(@Param("tno") String tno,@Param("departmentname") String departmentname);

    Integer CountDepartment(String departmentname);

    List<String> getAllDepartment();

}
