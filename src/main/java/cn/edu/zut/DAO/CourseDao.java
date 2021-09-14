package cn.edu.zut.DAO;

import cn.edu.zut.Model.Course;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseDao {
    List<Course> queryCourseList();

    Course findCourseByCno(String cno);

    List<Course> findCourseByName(String name);

    Integer countByType(String type);

    void addExam(Course course);

}
