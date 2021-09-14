package cn.edu.zut.Service;

import cn.edu.zut.DAO.DepartmentDao;
import cn.edu.zut.Model.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    @Autowired
    DepartmentDao departmentDAO;


    @Override
    public Department loginTeachingSecretary(String UserName, String Password) {
        return departmentDAO.loginTeachingSecretary(UserName,Password);
    }

}
