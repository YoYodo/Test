package org.test.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.test.dto.UserDTO;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * admin Controller
 * Created by apple on 2017/11/16.
 */
@Controller
public class adminCtrl {
    @RequestMapping("/admin.action")
    public String reqAdminPage() {
        return "/admin/mange/zmange";
    }

    @RequestMapping("/studentAddView.do")
    public String reqAddStuPage() {
        return "/admin/mange/index";

    }

    @RequestMapping("/studentAddView")
    public ModelAndView addView() {
        return new ModelAndView("studentAdd");
    }


}

