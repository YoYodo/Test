package org.test.service;


import org.test.dto.UserDTO;


/**
 * Author:YoYo_D
 * Created by apple on 2017/10/25.
 * 针对接口编程 调用mapper
 */

public interface UserService {
    // 通过用户名及密码核查用户登录
    public UserDTO login(String username, String password);

}


