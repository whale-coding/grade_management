package cn.edu.zut.Controller;

import cn.edu.zut.Model.Department;
import cn.edu.zut.Model.Student;
import cn.edu.zut.Model.User;
import cn.edu.zut.Service.DepartmentService;
import cn.edu.zut.Service.StudentService;
import cn.edu.zut.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @Autowired
    @Qualifier("studentServiceImpl")
    private StudentService studentService;

    @Autowired
    @Qualifier("departmentServiceImpl")
    private DepartmentService departmentService;

    @RequestMapping("/")
    public String login() {
        return "Login";
    }

    @RequestMapping("/loginUser")
    public String loginUser(HttpServletRequest request, String userName, String passWord , String UType){
        if (userService.loginUser(userName,passWord)!=null || studentService.loginStudent(userName,passWord)!=null || departmentService.loginTeachingSecretary(userName,passWord)!=null){
            if(UType==null){
                UType="admin";
                User user=userService.loginUser(userName, passWord);
                request.getSession().setAttribute("UType",UType);
                if (user==null){
                    request.setAttribute("msg","请选择正确的登录类型");
                    return "/Login";
                }else {
                }
            }
            if (UType.equals("student")){
                Student user1=studentService.loginStudent(userName,passWord);
                request.getSession().setAttribute("UType",UType);
                if (user1==null){
                    request.setAttribute("msg","账号名或密码错误");
                    return "/Login";
                }else {
                    request.getSession().setAttribute("SingleStudent",user1);
                    return "/WorkSpace/index-stu";
                }
            }
            if (UType.equals("teacher")){
                Department user2=departmentService.loginTeachingSecretary(userName,passWord);
                request.getSession().setAttribute("UType",UType);
                if (user2==null){
                    request.setAttribute("msg","账号名或密码错误");
                    return "/Login";
                }else {

                    request.getSession().setAttribute("user",user2);

                    return "/WorkSpace/index-tec";
                }
            }
            return "/WorkSpace/index";
        }else {
            request.setAttribute("msg","账号名或密码错误");
            return "/Login";
        }
    }

    @RequestMapping("/logoutUser")
    public String logoutUser(HttpServletRequest request){
        request.getSession().invalidate();
        return "/Login";
    }
}
