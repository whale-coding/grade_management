package cn.edu.zut.DAO;

import cn.edu.zut.Model.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserDao {
    User loginUser(@Param("UserName") String UserName, @Param("Password") String Password);
    int addUser(User user);
    User queryUserByUserName(@Param("UserName") String UserName);

}
