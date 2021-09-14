package cn.edu.zut.Service;

import cn.edu.zut.DAO.SCDao;
import cn.edu.zut.Model.Grade;
import cn.edu.zut.Model.SC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SCServiceImpl implements SCService{
    @Autowired
    SCDao scdao;


    @Override
    public List<SC> findAllGrade(String departmentname) {
        return scdao.findAllGrade(departmentname);
    }

    @Override
    public SC findSCById(Integer id) {
        return scdao.findSCById(id);
    }

    @Override
    public void modifySc(SC sc) {
        scdao.modifySc(sc);
    }

    @Override
    public void addGrade(SC sc) {
        scdao.addGrade(sc);
    }

    @Override
    public List<SC> findAllASCBySno(String departmentname) {
        return scdao.findAllASCBySno(departmentname);
    }

    @Override
    public List<SC> findAllDescByGrades(String departmentname) {
        return scdao.findAllDescByGrades(departmentname);
    }

    @Override
    public List<Grade> findGradeExcel(String departmentname) {
        return scdao.findGradeExcel(departmentname);
    }

    @Override
    public List<SC> findAllGradeIsNull(String departmentname) {
        return scdao.findAllGradeIsNull(departmentname);
    }
}
