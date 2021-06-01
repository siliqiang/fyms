package com.ruoyi.domain;

import java.math.BigDecimal;
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
public class Orders extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 订单id */
    private String id;

    /** 客户id */
    @Excel(name = "客户id")
    private String clientId;

    /** 来源id（可以是猫咪或者用品） */
    @Excel(name = "来源id", readConverterExp = "可=以是猫咪或者用品")
    private String sourceId;

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

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setClientId(String clientId) 
    {
        this.clientId = clientId;
    }

    public String getClientId() 
    {
        return clientId;
    }
    public void setSourceId(String sourceId) 
    {
        this.sourceId = sourceId;
    }

    public String getSourceId() 
    {
        return sourceId;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setSellingPrice(BigDecimal sellingPrice) 
    {
        this.sellingPrice = sellingPrice;
    }

    public BigDecimal getSellingPrice() 
    {
        return sellingPrice;
    }
    public void setQuantity(Long quantity) 
    {
        this.quantity = quantity;
    }

    public Long getQuantity() 
    {
        return quantity;
    }
    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("clientId", getClientId())
            .append("sourceId", getSourceId())
            .append("type", getType())
            .append("sellingPrice", getSellingPrice())
            .append("quantity", getQuantity())
            .append("price", getPrice())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
