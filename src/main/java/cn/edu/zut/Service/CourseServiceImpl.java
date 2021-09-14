package cn.edu.zut.Service;

import cn.edu.zut.DAO.CourseDao;
import cn.edu.zut.Model.Course;
import cn.edu.zut.vo.ExamVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CourseServiceImpl implements CourseService{
    @Autowired
    CourseDao courseDAO;

    @Override
    public List<Course> queryCourseList() {
        return courseDAO.queryCourseList();
    }

    @Override
    public Course findCourseByCno(String cno) {
        return courseDAO.findCourseByCno(cno);
    }

    @Override
    public List<Course> findCourseByName(String name) {
        return courseDAO.findCourseByName(name);
    }

    @Override
    public List<ExamVo> findAllType() {
        Integer num1 = courseDAO.countByType("必修课");
        Integer num2 = courseDAO.countByType("选修课");
        Integer num3 = courseDAO.countByType("任选课");
        ArrayList<ExamVo> list = new ArrayList<>();
        list.add(new ExamVo(num1,"必修课"));
        list.add(new ExamVo(num2,"选修课"));
        list.add(new ExamVo(num3,"任选课"));
        return list;
    }

    @Override
    public void addExam(Course course) {
        courseDAO.addExam(course);
    }
}
