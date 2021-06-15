package com.ruoyi.domain;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 订单对象 fy_pet_orders
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Data

public class Orders extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单id */
    private String id;

    /** 客户id */
    @Excel(name = "客户id")
    private String clientId;

    /** 订单类型（1：猫咪2：用品 3：药品） */
    @Excel(name = "订单类型", readConverterExp = "1=：猫咪2：用品,3=：药品")
    private String type;

    /** 售价 */
    @Excel(name = "售价")
    private BigDecimal sellingPrice;

    /** 数量 */
    @Excel(name = "数量")
    private Long quantity;

    /** 价格 */
    @Excel(name = "价格")
    private BigDecimal price;

    /**
     * 来源名称
     */
    private String sourceName;
    /**
     * 用户名称
     */
    private String userName;

    /** 来源id（可以是猫咪或者用品） */
    private String sourceId;

    /**
     * 利润
     */
    private  BigDecimal Profit;

}
