package cn.edu.zut.vo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * @author 聂建强
 * @create 2021-07-01-20:22
 */
@Data
@AllArgsConstructor
public class StuVo3 {

    @JsonProperty("value")
    private Integer num;
    @JsonProperty("name")
    private String StuMajor;
}
