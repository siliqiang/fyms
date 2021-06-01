package com.ruoyi.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 客户信息对象 us_client
 *
 * @author slq
 * @date 2021-05-28
 */
@Data
public class UsClient extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private String id;

    /** 客户姓名 */
    @Excel(name = "客户姓名")
    private String name;

    /** 性别 */
    @Excel(name = "用户性别", readConverterExp = "0=男,1=女,2=未知")
    private String sex;

    /** 电话 */
    @Excel(name = "电话")
    private String tel;

    /** 成交时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "成交时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date fixtureDate;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

}
