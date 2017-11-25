package org.test.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.test.dto.SubDTO;
import org.test.service.SubService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * subject__controller
 * Created by apple on 2017/11/16.
 */
@Controller
public class SubCtrl {
    @Autowired
    private SubService mSubService;

    @RequestMapping(value = {"/softwareDeparList", "/subjectsCate"})
    public ModelAndView subjectList() {
        Map<String, Object> model = new HashMap<String, Object>();
        List<SubDTO> subjects = mSubService.getSubjects();
        model.put("subjects", subjects);
        return new ModelAndView("softwareSubList", model);
    }

    @RequestMapping("/engineerDeparList.do")
    public ModelAndView subjectList1() {
        Map<String, Object> model = new HashMap<String, Object>();
        List<SubDTO> subjects = mSubService.getSubjects();
        model.put("subjects", subjects);
        return new ModelAndView("engineerDepar", model);
    }


}
