package com.ruoyi.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 猫咪管理对象 fy_pet_cat
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Data
public class Cat extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private String id;

    /** 种类id */
    private String breedId;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birthDate;

    /** 拿猫日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "拿猫日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date haveDate;

    /** 拿猫价格 */
    @Excel(name = "拿猫价格")
    private Long primeCost;

    /** 图片地址 */
    private String url;

    /** 状态（字典）0：在售 1：已售 2：死亡 */
    @Excel(name = "状态", readConverterExp = "字=典")
    private String state;

}
