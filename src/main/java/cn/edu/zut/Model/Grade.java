package cn.edu.zut.Model;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import lombok.Data;

@Data
public class Grade extends BaseRowModel {

    //value为列名,index为第几列
    @ExcelProperty(value = "学号",index = 0 )
    private String sno;
    @ExcelProperty(value = "课程号",index = 1)
    private String cno;
    @ExcelProperty(value = "学生名",index = 2)
    private String sname;
    @ExcelProperty(value = "课程名",index = 3)
    private String cname;
    @ExcelProperty(value = "修读类型",index = 4)
    private String type;
    @ExcelProperty(value = "成绩",index = 5)
    private float grades;
}
