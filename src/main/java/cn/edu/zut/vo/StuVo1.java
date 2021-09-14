package cn.edu.zut.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class StuVo1 {

    private List<String>  studentmajor;

    private List<Integer> count;
}
