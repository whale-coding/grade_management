package cn.edu.zut.Service;

import cn.edu.zut.Model.Grade;
import cn.edu.zut.Model.SC;

import java.util.List;

public interface SCService {
    List<SC> findAllGrade(String departmentname);

    SC findSCById(Integer id);

    void modifySc(SC sc);

    void addGrade(SC sc);

    List<SC> findAllASCBySno(String departmentname);

    List<SC> findAllDescByGrades(String departmentname);

    List<Grade> findGradeExcel(String departmentname);

    List<SC> findAllGradeIsNull(String departmentname);

}
