package cn.edu.zut.Service;

import cn.edu.zut.Model.Professional;

import java.util.List;

public interface ProService {

    List<Professional> findMajorByCollege(String college);
}
