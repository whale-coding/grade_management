package cn.edu.zut.Controller;

import cn.edu.zut.Model.Department;
import cn.edu.zut.Model.Grade;
import cn.edu.zut.Service.SCService;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.metadata.Sheet;
import com.alibaba.excel.support.ExcelTypeEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class ExcelController {

    @Autowired
    private SCService scService;

    @RequestMapping("/exportExcel")
    public void export(HttpServletResponse response, HttpSession session) throws IOException {
        Object user = session.getAttribute("user");
        Department department=(Department) user;

        List<Grade> list = scService.findGradeExcel(department.getDepartmentname());
        ServletOutputStream out = response.getOutputStream();
        ExcelWriter writer = new ExcelWriter(out, ExcelTypeEnum.XLSX, true);
        String fileName = "学生成绩表";
        Sheet sheet = new Sheet(1, 0,Grade.class);
        //设置自适应宽度
        sheet.setAutoWidth(Boolean.TRUE);
        // 第一个 sheet 名称
        sheet.setSheetName("学生成绩表");
        writer.write(list, sheet);
        //通知浏览器以附件的形式下载处理，设置返回头要注意文件名有中文
        response.setHeader("Content-disposition", "attachment;filename=" + new String( fileName.getBytes("gb2312"), "ISO8859-1" ) + ".xlsx");
        writer.finish();
        response.setContentType("multipart/form-data");
        response.setCharacterEncoding("utf-8");
        out.flush();
        out.close();
    }



}
