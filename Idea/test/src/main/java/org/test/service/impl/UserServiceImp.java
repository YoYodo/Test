package org.test.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.test.dao.UserDao;
import org.test.dto.UserDTO;
import org.test.service.UserService;

import javax.annotation.Resource;
import java.util.Map;


/**
 * Author:YoYo_D
 * Created by apple on 2017/10/25.
 *
 * @resoourse 注入mapper
 * 调用mapper接口里声明的crud方法
 * 配置文件 导入mybatis类库  mybatis-spring版本匹配
 */

@Service
@Transactional// @Transactional表示该类被Spring作为管理事务的类

public class UserServiceImp implements UserService {

    //getLogger(class)的参数用途:追踪产生此日志的类.

    Logger logger = Logger.getLogger(UserServiceImp.class);

    @Autowired
    UserDao mUserDao;

    /**
     * 登录
     * 根据用户名和密码进行查询
     */
    @Override
    public UserDTO login(String mUsername, String mUserPassword) {
        return mUserDao.findByUserNameAndPassword(mUsername, mUserPassword);
    }
}






