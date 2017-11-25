package org.test.service;

import org.test.dto.SubDTO;

import java.util.List;


public interface SubService {

    List<SubDTO> getSubjects();

    SubDTO findById(int sub_id);


}
