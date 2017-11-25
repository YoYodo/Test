package org.test.dto;

/*
1编写实体类o2 创建数据库表 3 表和类之间的映射文件<mapper >（每一个操作是一条sql  有id parameterType,resultType ）在 mybatis -config.xml 4创建map接口（sqlSession类）
 5.namespace  接口名字和namespace同
 * Created by apple on 2017/11/8.
 */

import lombok.Data;

//实体类User
@Data
public class UserDTO {

    private String username;
    private int mUserId;
    private String password;
    private String mUserEmail;
    private String mUserPhone;


}
