import cn.edu.zut.Model.User;
import cn.edu.zut.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;


@ContextConfiguration("classpath*:spring-database.xml")
public class BeanTest extends AbstractTestNGSpringContextTests {

    @Autowired
    User user;

    @Autowired
    UserService userService;
    @Autowired
    TeacherService teacherService;
    @Autowired
    StudentService studentService;
    @Autowired
    SCService scService;
    @Autowired
    DepartmentService departmentService;
    @Autowired
    CourseService courseService;
//    @Autowired
//    MajorService majorService;
//
//
//    @Test
//    public void test() {
//        //System.out.println(userService.loginUser("admin","admin"));
//        System.out.println(teacherService.queryTeacherList());
//        System.out.println(studentService.queryStudentList());
//        System.out.println(scService.querySCList());
//        System.out.println(departmentService.queryDepartmentList());
//        System.out.println(courseService.queryCourseList());
//        System.out.println(majorService.queryMajorList());
//    }

    @Test
    public void test1(){
        System.out.println(studentService.loginStudent("201905029209","123456"));
        System.out.println(departmentService.loginTeachingSecretary("200203","123456"));
    }

   /* @Test
    public void test2(){
        System.out.println(studentService.queryStudentByID(studentService.loginStudent("201905036101","123456").getID()));
        System.out.println(departmentService.queryTeachingSecretaryByID(departmentService.loginTeachingSecretary("200203","123456").getID()));
    }

    @Test
    public void test3(){
        System.out.println(studentService.queryMessage("张三"));
    }*/

}