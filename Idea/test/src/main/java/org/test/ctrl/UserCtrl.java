package org.test.ctrl;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.test.dto.UserDTO;
import org.test.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Author:YoYo_D
 * Date:2017/10/25
 * The ctrl of the login action.
 */
@Controller//@Controller这个注解用来标记这是个控制器，
public class UserCtrl {

    private static Logger logger = Logger.getLogger(UserCtrl.class);
    @Autowired
    private UserService mUserService;

    //login.action  action可加可不加  . so 就不加了
    @RequestMapping(value = "login")
    @ResponseBody
    public String checkLogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletResponse reponse, HttpServletRequest request) {
        UserDTO userDTO = mUserService.login(username, password);
        if (userDTO != null) {
            request.getSession().setAttribute("login_user", userDTO);
            return "true";
        } else {
            return "false";
        }
    }

}





