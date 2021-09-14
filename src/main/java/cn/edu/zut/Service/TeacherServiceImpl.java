package cn.edu.zut.Service;

import cn.edu.zut.DAO.TeacherDao;
import cn.edu.zut.Model.Teacher;
import cn.edu.zut.vo.TeaVO1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService{
    @Autowired
    TeacherDao teacherDAO;
    @Override
    public List<Teacher> queryTeacherList(String departmentname) {
        return teacherDAO.queryTeacherList(departmentname);
    }

    @Override
    public List<Teacher> findByTnoOrDepartmentName(String tno, String departmentname) {
        return teacherDAO.findByTnoOrDepartmentName(tno,departmentname);
    }

    @Override
    public List<TeaVO1> getTeaVo1() {
        List<TeaVO1> list=new ArrayList<>();
        List<String> departments = teacherDAO.getAllDepartment();
        for (String s:departments){
            Integer count = teacherDAO.CountDepartment(s);
            list.add(new TeaVO1(count,s));
        }
        return list;
    }


}
