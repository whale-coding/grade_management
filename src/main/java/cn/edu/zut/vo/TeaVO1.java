package cn.edu.zut.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class TeaVO1 {
    @JsonProperty("value")
    private Integer count;
    @JsonProperty("name")
    private String departmentname;

}
