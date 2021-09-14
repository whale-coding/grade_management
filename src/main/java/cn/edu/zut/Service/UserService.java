package cn.edu.zut.Service;

import cn.edu.zut.Model.User;
import org.apache.ibatis.annotations.Param;


public interface UserService {
    User loginUser(@Param("userName") String userName, @Param("userPassword") String userPassword);


}