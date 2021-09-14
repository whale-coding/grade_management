package cn.edu.zut.DAO;

import cn.edu.zut.Model.Professional;

import java.util.List;

public interface ProfessionalDao {

    List<Professional> findMajorByCollege(String college);
}
