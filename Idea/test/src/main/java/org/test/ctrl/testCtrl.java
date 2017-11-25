package org.test.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.test.service.testService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by apple on 2017/10/21.
 */
@Controller
@RequestMapping(value = "/test")
public class testCtrl {
    /**
     * 先注入service对象，再调用service对象的方法
     */
    @Autowired
    testService mTestService;

    @Autowired
    HttpServletRequest mRequest;

    @RequestMapping(value = "/show")
    public String testMe() {
        mRequest.setAttribute("data", mTestService.queryData());
        return "test";
    }
}
