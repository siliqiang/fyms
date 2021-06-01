package com.ruoyi.domain;

import lombok.Data;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 宠物种类对象 fy_pet_breed
 *
 * @author ruoyi
 * @date 2021-05-31
 */
@Data
public class Breed extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    private String id;

    /**
     * 类别（1：英短2：美短）
     */
    @Excel(name = "类别", readConverterExp = "1=：英短2：美短")
    private String category;

    /**
     * 种类名称
     */
    @Excel(name = "种类名称")
    private String breedName;

    /**
     * 类别id
     */
    @Excel(name = "类别id")
    private String categoryId;


}
