package cn.edu.zut.DAO;

import cn.edu.zut.Model.Department;
import cn.edu.zut.Model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DepartmentDao {
    List<Department> queryDepartmentList();
    Department loginTeachingSecretary(@Param("teachingsecretaryid") String UserName, @Param("password") String Password);
    Department queryTeachingSecretaryByID(@Param("id") int id);
}
