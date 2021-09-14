package cn.edu.zut.DAO;

import cn.edu.zut.Model.Grade;
import cn.edu.zut.Model.SC;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SCDao {


    List<SC> findAllGrade(String departmentname);

    SC findSCById(Integer id);

    void modifySc(SC sc);

    void addGrade(SC sc);

    List<SC> findAllASCBySno(String departmentname);

    List<SC> findAllDescByGrades(String departmentname);

    List<Grade> findGradeExcel(String departmentname);

    List<SC> findAllGradeIsNull(String departmentname);
}
