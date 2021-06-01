package com.ruoyi.service;


import com.ruoyi.domain.Cat;

import java.util.List;

/**
 * 猫咪管理Service接口
 *
 * @author ruoyi
 * @date 2021-06-01
 */
public interface ICatService
{
    /**
     * 查询猫咪管理
     *
     * @param id 猫咪管理ID
     * @return 猫咪管理
     */
    public Cat selectCatById(String id);

    /**
     * 查询猫咪管理列表
     *
     * @param cat 猫咪管理
     * @return 猫咪管理集合
     */
    public List<Cat> selectCatList(Cat cat);

    /**
     * 新增猫咪管理
     *
     * @param cat 猫咪管理
     * @return 结果
     */
    public int insertCat(Cat cat);

    /**
     * 修改猫咪管理
     *
     * @param cat 猫咪管理
     * @return 结果
     */
    public int updateCat(Cat cat);

    /**
     * 批量删除猫咪管理
     *
     * @param ids 需要删除的猫咪管理ID
     * @return 结果
     */
    public int deleteCatByIds(String[] ids);

    /**
     * 删除猫咪管理信息
     *
     * @param id 猫咪管理ID
     * @return 结果
     */
    public int deleteCatById(String id);
}
