package org.test.service.impl;

import org.springframework.stereotype.Service;
import org.test.dao.SubDao;
import org.test.dto.SubDTO;
import org.test.service.SubService;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户端：display subject list and query subject by id
 * Created by apple on 2017/11/16.
 */
@Service
public class SubServiceImp implements SubService {
    @Resource
    SubDao mSubDao;

    public List<SubDTO> getSubjects() {
        return mSubDao.list();
    }


    public SubDTO findById(int sub_id) {
        return mSubDao.findByID(sub_id);
    }


}
