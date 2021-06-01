package com.ruoyi.domain;

import java.math.BigDecimal;

import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 物品对象 fy_pet_goods
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Data
public class Goods extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 物品id */
    private String id;

    /** 物品类别（1：药品2：物品） */
    @Excel(name = "物品类别", readConverterExp = "1=：药品2：物品")
    private String type;

    /** 物品名称 */
    @Excel(name = "物品名称")
    private String name;

    /** 库存 */
    @Excel(name = "库存")
    private String  inventory;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

}
