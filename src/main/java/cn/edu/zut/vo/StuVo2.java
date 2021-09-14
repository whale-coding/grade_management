package cn.edu.zut.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class StuVo2 {

    @JsonProperty("value")
    private Integer num;
    @JsonProperty("name")
    private String grade;
}
