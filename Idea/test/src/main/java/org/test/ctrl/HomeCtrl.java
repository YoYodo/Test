package org.test.ctrl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Author:YoYo_D
 * Created by apple on 2017/10/25.
 */
@Controller
public class HomeCtrl {

    private static Logger logger = Logger.getLogger(HomeCtrl.class);

    @RequestMapping("/home.action")
    public String reqHomePage() {
        return "home";
    }

    @RequestMapping("/contact.action")
    public String reqContactPage() {
        return "/contact";
    }


}
