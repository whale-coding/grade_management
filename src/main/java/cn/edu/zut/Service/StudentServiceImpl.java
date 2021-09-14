package cn.edu.zut.Service;

import cn.edu.zut.DAO.ProfessionalDao;
import cn.edu.zut.DAO.StudentDao;
import cn.edu.zut.Model.Professional;
import cn.edu.zut.Model.Student;
import cn.edu.zut.vo.StuVo1;
import cn.edu.zut.vo.StuVo2;
import cn.edu.zut.vo.StuVo3;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Autowired
    StudentDao studentDAO;

    @Autowired
    private ProfessionalDao professionalDao;

    @Override
    public List<Student> queryStudentList(String departmentname) {
        return studentDAO.queryStudentList(departmentname);
    }

    @Override
    public Student loginStudent(String UserName, String Password) {
        return studentDAO.loginStudent(UserName,Password);
    }

    @Override
    public int delStudentByID(int id) {
        return studentDAO.delStudentByID(id);
    }

    @Override
    public int ModifyStudent(Student student) {
        return studentDAO.ModifyStudent(student);
    }

    @Override
    public Student queryStudentById(Integer id) {
        return studentDAO.queryStudentById(id);
    }

    @Override
    public int addStudent(Student student) {
        return studentDAO.addStudent(student);
    }

    @Override
    public List<Student> queryStudentByName(String name,String departmentname) {
        return studentDAO.queryStudentByName(name,departmentname);
    }

    @Override
    public Student queryStudentBySno(String sno,String departmentname) {
        return studentDAO.queryStudentBySno(sno,departmentname);
    }

    @Override
    public StuVo1 getStuVo1(String departmentname) {

        List<String> majs=new ArrayList();
        List<Integer> count=new ArrayList<>();
        List<String> list = studentDAO.getAllMajorByDept(departmentname);
        for (String s:list){
            Integer num = studentDAO.CountMajorByDept(s);
            majs.add(s);
            count.add(num);
        }
        StuVo1 vo1 = new StuVo1(majs,count);

        return vo1;
    }

    @Override
    public List<StuVo2> getAllStuVo2(String departmentname) {

        Integer num1 = studentDAO.countStuByGrade(1,departmentname);
        Integer num2 = studentDAO.countStuByGrade(2,departmentname);
        Integer num3 = studentDAO.countStuByGrade(3,departmentname);
        Integer num4 = studentDAO.countStuByGrade(4,departmentname);

        List<StuVo2> list=new ArrayList<>();
        list.add(new StuVo2(num1,"大学一年级"));
        list.add(new StuVo2(num2,"大学二年级"));
        list.add(new StuVo2(num3,"大学三年级"));
        list.add(new StuVo2(num4,"大学四年级"));

        return list;
    }

    @Override
    public List<StuVo3> getStuVo3(String departmentname) {
        List<StuVo3> list=new ArrayList<>();

        List<Professional> majors = professionalDao.findMajorByCollege(departmentname);
        for (Professional p:majors){
            Integer num = studentDAO.countByMajor(p.getMajor());
            list.add(new StuVo3(num,p.getMajor()));
        }

        return list;
    }

// =======================================================================

    @Override
    public List<Student> getlist(int start, int count) {
        return studentDAO.getlist(start,count);
    }

    @Override
    public Integer getTotal() {
        return studentDAO.getTotal();
    }


}
