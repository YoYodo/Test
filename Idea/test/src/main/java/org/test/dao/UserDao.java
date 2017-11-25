package org.test.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.test.dto.UserDTO;

/**
 * Author:YoYo_D
 * the Dao of user
 * Created by apple on 2017/10/25.
 */


// 首先使用 @Repository 将 DAO 类声明为 Bean  UserDao==UserMapper
@Repository
public interface UserDao {
    /**
     * 根据用户名和密码查询用户是否存在
     *
     * @return UserDTO
     */
    UserDTO findByUserNameAndPassword(@Param("username") String username, @Param("password") String password);
}
