package cn.edu.zut.Service;

import cn.edu.zut.Model.Course;
import cn.edu.zut.vo.ExamVo;

import java.util.List;

public interface CourseService {
    List<Course> queryCourseList();

    Course findCourseByCno(String cno);

    List<Course> findCourseByName(String name);

    List<ExamVo> findAllType();

    void addExam(Course course);
}
