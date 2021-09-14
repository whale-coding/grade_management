package cn.edu.zut.Service;

import cn.edu.zut.Model.Teacher;
import cn.edu.zut.vo.TeaVO1;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherService {
    List<Teacher> queryTeacherList(String departmentname);

    List<Teacher> findByTnoOrDepartmentName(@Param("tno") String tno, @Param("departmentname") String departmentname);

    List<TeaVO1> getTeaVo1();
}
