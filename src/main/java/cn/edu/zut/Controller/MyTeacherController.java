package cn.edu.zut.Controller;

import cn.edu.zut.Model.*;
import cn.edu.zut.Service.*;
import cn.edu.zut.vo.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class MyTeacherController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseService courseService;

    @Autowired
    private SCService scService;

    @Resource
    private ProService proService;

    @RequestMapping("/index-tec")
    public String index(){
        return "/WorkSpace/index-tec";
    }

    //查询所有学生
    @RequestMapping("/findAllStu")
    public String findAllStu(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                             Model model, HttpSession session){

        Object user = session.getAttribute("user");
        Department department=(Department) user;
        //后面紧跟着的一个查询就是分页查询，每页5条记录
        PageHelper.startPage(pn,5);
        //这个查询语句就是分页查询
        List<Student> list = studentService.queryStudentList(department.getDepartmentname());
        //将分页查询结果包装到分页插件提供的PageInfo类中，前台通过pageInfo即可获得所有的分页信息
        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/stuList";
    }


    //去修改学生页面
    @RequestMapping("/toUpdateStu")
    public String toUpdateStu(Integer id, Model model,HttpSession session){
        Student student = studentService.queryStudentById(id);

        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<Professional> list = proService.findMajorByCollege(department.getDepartmentname());
        model.addAttribute("list",list);


        model.addAttribute("student",student);
        return "/WorkSpace/Teacher/updateStu";
    }

    //修改学生
    @RequestMapping("/updateStu")
    public String updateStu(Student student){
        studentService.ModifyStudent(student);
        return "redirect:/findAllStu";
    }

    //删除学生
    @RequestMapping("/delStu/{id}")
    public String delStu(@PathVariable("id") Integer id){
        studentService.delStudentByID(id);
        return "redirect:/findAllStu";
    }

    //去添加学生页面
    @RequestMapping("/toAddStu")
    public String toAddStu(HttpSession session,Model model){

        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<Professional> list = proService.findMajorByCollege(department.getDepartmentname());
        model.addAttribute("list",list);

        return "/WorkSpace/Teacher/addStudent";
    }

    //添加学生
    @RequestMapping("/addStu")
    public String addStu(Student student){

        studentService.addStudent(student);

        return "redirect:/findAllStu";
    }

    //通过学号查询学生信息
    @RequestMapping("/findStuBySno")
    public String findStuById(@RequestParam(value = "pn",defaultValue = "1") Integer pn,String sno,Model model,HttpSession session){

        Object user = session.getAttribute("user");
        Department department=(Department) user;

        PageHelper.startPage(pn,5);
        Student student = studentService.queryStudentBySno(sno,department.getDepartmentname());

        List<Student> list=new ArrayList<>();
        list.add(student);
        PageInfo pageInfo=new PageInfo(list,5);
        if (student==null){
            model.addAttribute("error","未查询到学生信息");
        }
        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/stuList";
    }

    //通过姓名模糊查询学生
    @RequestMapping("/findStuByName")
    public String findStuByName(@RequestParam(value = "pn",defaultValue = "1") Integer pn,String name,Model model,HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        PageHelper.startPage(pn,5);
        List<Student> list = studentService.queryStudentByName(name,department.getDepartmentname());

        PageInfo pageInfo=new PageInfo(list,5);

        if (list.isEmpty()){
            model.addAttribute("error2","未查询到学生信息");
        }
        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/stuList";
    }


    //查询所有教师
    @RequestMapping("/findAllTea")
    public String findAllTea(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model,HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        PageHelper.startPage(pn,5);

        List<Teacher> list = teacherService.queryTeacherList(department.getDepartmentname());

        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/teaList";
    }

    //通过工号查询教师信息

    @RequestMapping("/findTeaByTnoOrDeptName")
    public String findTeaByTnoOrDeptName(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                         Model model,String tno,HttpSession session){

        Object user = session.getAttribute("user");
        Department department=(Department) user;

        PageHelper.startPage(pn,5);
        List<Teacher> list = teacherService.findByTnoOrDepartmentName(tno, department.getDepartmentname());

        if (list.isEmpty()){
            model.addAttribute("error","未查询到教师信息");
        }

        PageInfo pageInfo=new PageInfo(list,5);
        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/teaList";
    }

    //查询所有考试安排
    @RequestMapping("/findAllExam")
    public String findAllExam(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){

        PageHelper.startPage(pn,5);

        List<Course> list = courseService.queryCourseList();

        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/examList";
    }


    //通过课程号查询考试信息
    @RequestMapping("/findExamByCno")
    public String findExamByCno(@RequestParam(value = "pn",defaultValue = "1") Integer pn,String cno,Model model){
        PageHelper.startPage(pn,5);
        Course course = courseService.findCourseByCno(cno);

        List<Course> list=new ArrayList<>();
        list.add(course);
        PageInfo pageInfo=new PageInfo(list,5);
        if (course==null){
            model.addAttribute("error","未查询到考试信息");
        }
        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/examList";
    }

    //通过课程名模糊查询考试信息
    @RequestMapping("/findExamByName")
    public String findExamByName(@RequestParam(value = "pn",defaultValue = "1") Integer pn,String name,Model model){
        PageHelper.startPage(pn,5);
        List<Course> list = courseService.findCourseByName(name);

        PageInfo pageInfo=new PageInfo(list,5);

        if (list.isEmpty()){
            model.addAttribute("error2","未查询到考试信息");
        }
        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/examList";
    }

    //去新增考试页面
    @RequestMapping("/toAddExam")
    public String toAddExam(){
        return "/WorkSpace/Teacher/addExam";
    }

    //新增考试
    @RequestMapping("/addExam")
    public String addExam(Course course){

        courseService.addExam(course);
        return "redirect:/findAllExam";

    }

    //成绩列表
    @RequestMapping("/findAllGrade")
    public String findAllGrade(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model,HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        PageHelper.startPage(pn,5);
        List<SC> list = scService.findAllGrade(department.getDepartmentname());

        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/gradeList";
    }


    //成绩列表按学号升序排列
    @RequestMapping("/findAllGradeBySno")
    public String findAllGradeBySno(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model,HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;
        PageHelper.startPage(pn,5);
        List<SC> list = scService.findAllASCBySno(department.getDepartmentname());

        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/gradeList";
    }

    //成绩列表按成绩降序排列
    @RequestMapping("/findAllGradeByGrades")
    public String findAllGradeByGrades(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model,HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;
        PageHelper.startPage(pn,5);
        List<SC> list = scService.findAllDescByGrades(department.getDepartmentname());

        PageInfo pageInfo=new PageInfo(list,5);

        model.addAttribute("pageInfo",pageInfo);
        return "/WorkSpace/Teacher/gradeList";
    }


    //去成绩修改页面
    @RequestMapping("/toUpdateGrade")
    public String toUpdateGrade(Integer id, Model model){
        SC sc = scService.findSCById(id);
        model.addAttribute("sc",sc);
        return "/WorkSpace/Teacher/updateGrade";
    }

    //修改成绩
    @RequestMapping("/updateGrade")
    public String updateGrade(SC sc){
        scService.modifySc(sc);
        return "redirect:/findAllGrade";
    }

    //去录入成绩页面
    @RequestMapping("/toAddGrade")
    public String toAddGrade(HttpSession session,Model model){
        Object user = session.getAttribute("user");
        Department department=(Department) user;
        List<SC> list = scService.findAllGradeIsNull(department.getDepartmentname());

        model.addAttribute("grades",list);
        return "/WorkSpace/Teacher/addGrade";
    }


    //录入成绩
    @RequestMapping("/addGrade")
    public String addGrade(Integer id,Model model){
        SC sc = scService.findSCById(id);
        model.addAttribute("sc",sc);

        return "/WorkSpace/Teacher/entryGrade";
    }

   //录成绩
    @RequestMapping("/entryGrade")
    public String entryGrade(SC sc){
        scService.addGrade(sc);
        return "redirect:/toAddGrade";
    }

    //去考试统计页面
    @RequestMapping("/toCountExam")
    public String toCountExam(){

        return "/WorkSpace/Teacher/count-exam";
    }

    //去学生统计页面
    @RequestMapping("/toCountStu")
    public String toCountStu(){

        return "/WorkSpace/Teacher/count-stu";
    }
    //去教师统计页面
    @RequestMapping("/toCountTea")
    public String toCountTea(){

        return "/WorkSpace/Teacher/count-tea";
    }

    //统计教师
    @RequestMapping("/CountTeaNumberByDepartment")
    @ResponseBody
    public List<TeaVO1> CountTeaNumberByDepartment(){
        List<TeaVO1> vo1 = teacherService.getTeaVo1();

        return vo1;
    }

    //统计学生
    @RequestMapping("/CountStuNumberByDepartment")
    @ResponseBody
    public StuVo1 CountStuNumberByDepartment(HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        StuVo1 stuVo1 = studentService.getStuVo1(department.getDepartmentname());
        return stuVo1;
    }

    //统计学生
    @RequestMapping("/CountStuNumberByGrade")
    @ResponseBody
    public List<StuVo2> CountStuNumberByGrade(HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<StuVo2> stuVo2 = studentService.getAllStuVo2(department.getDepartmentname());

        return stuVo2;
    }

    //考试统计
    @RequestMapping("/CountExamByType")
    @ResponseBody
    public List<ExamVo> CountExamByType(){
        List<ExamVo> type = courseService.findAllType();

        return type;
    }


    //根据学院查找学院对应的所有专业
    @RequestMapping("/findMajorByCollege")
    public String findMajorByCollege(HttpSession session,Model model){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<Professional> list = proService.findMajorByCollege(department.getDepartmentname());
        model.addAttribute("list",list);
        return "/WorkSpace/Teacher/addStudent";

    }

    //去个人主页
    @RequestMapping("/person-home")
    public String person_home(HttpSession session,Model model){
        Object user = session.getAttribute("user");
        Department department=(Department) user;
        model.addAttribute("user",department);

        return "/WorkSpace/Teacher/personal-home";
    }

    //本学院各专业学生人数统计
    @RequestMapping("/CountByMajor")
    @ResponseBody
    public List<StuVo3> CountStuNumberByMajor(HttpSession session){
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<StuVo3> vo3 = studentService.getStuVo3(department.getDepartmentname());

        return vo3;
    }

}
