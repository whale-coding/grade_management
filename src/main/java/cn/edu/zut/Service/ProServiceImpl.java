package cn.edu.zut.Service;

import cn.edu.zut.DAO.ProfessionalDao;
import cn.edu.zut.Model.Professional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProServiceImpl implements ProService {

    @Autowired
    private ProfessionalDao professionalDao;


    @Override
    public List<Professional> findMajorByCollege(String college) {

        return professionalDao.findMajorByCollege(college);
    }
}
