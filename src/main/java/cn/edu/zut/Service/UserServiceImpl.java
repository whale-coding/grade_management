package cn.edu.zut.Service;

import cn.edu.zut.DAO.UserDao;
import cn.edu.zut.Model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User loginUser(String userName, String userPassword) {
        return userDao.loginUser(userName,userPassword);
    }

}