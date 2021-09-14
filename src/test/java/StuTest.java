import cn.edu.zut.DAO.CourseDao;
import cn.edu.zut.DAO.SCDao;
import cn.edu.zut.DAO.TeacherDao;
import cn.edu.zut.Model.SC;
import cn.edu.zut.Model.Student;
import cn.edu.zut.Model.Teacher;
import cn.edu.zut.Service.CourseService;
import cn.edu.zut.Service.StudentService;
import cn.edu.zut.Service.TeacherService;
import cn.edu.zut.vo.ExamVo;
import cn.edu.zut.vo.TeaVO1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

import java.util.List;
@ContextConfiguration("classpath*:spring-database.xml")
public class StuTest extends AbstractTestNGSpringContextTests {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private SCDao scDao;

    @Autowired
    private CourseService courseService;

    @Autowired
    private CourseDao courseDao;


    @Test
    public void test2(){

        System.out.println(studentService.queryStudentById(1));

    }


    @Test
    public void test3(){
        Student student = new Student();
        student.setSno("201905029206");
        student.setName("黄伟");
        studentService.ModifyStudent(student);

    }


    @Test
    public void test4(){
        List<SC> grade = scDao.findAllGrade("计算机学院");
        System.out.println(grade);

    }

    @Test
    public void test5(){
        List<Teacher> list = teacherDao.findByTnoOrDepartmentName("2055", "计算机学院");
        System.out.println(list);

    }

    @Test
    public void test6(){
        List<String> list = teacherDao.getAllDepartment();
        System.out.println(list.size());
        for (String s:list){
            System.out.println(s);
        }

    }


    @Test
    public void test7(){
        System.out.println(teacherDao.CountDepartment("电信学院"));

    }

    @Test
    public void test8(){
        List<TeaVO1> vo1 = teacherService.getTeaVo1();
        for (TeaVO1 t:vo1){
            System.out.println(t);
        }

    }

    @Test
    public void test9(){
        List<ExamVo> list = courseService.findAllType();
//        Integer type = courseDao.countByType("选修课");
        System.out.println(list);
//        System.out.println(type);

    }

//    @Test
//    public void test10(){
//        List<Grade> list = scDao.findGradeExcel();
//        System.out.println(list);
//
//    }

}
