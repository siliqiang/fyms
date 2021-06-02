package com.ruoyi.service;

import java.util.List;
import com.ruoyi.domain.Goods;

/**
 * 物品Service接口
 * 
 * @author ruoyi
 * @date 2021-06-01
 */
public interface IGoodsService 
{
    /**
     * 查询物品
     * 
     * @param id 物品ID
     * @return 物品
     */
     Goods selectGoodsById(String id);

    /**
     * 查询物品列表
     * 
     * @param goods 物品
     * @return 物品集合
     */
     List<Goods> selectGoodsList(Goods goods);

    /**
     * 新增物品
     * 
     * @param goods 物品
     * @return 结果
     */
     int insertGoods(Goods goods);

    /**
     * 修改物品
     * 
     * @param goods 物品
     * @return 结果
     */
     int updateGoods(Goods goods);

    /**
     * 批量删除物品
     * 
     * @param ids 需要删除的物品ID
     * @return 结果
     */
     int deleteGoodsByIds(String[] ids);

    /**
     * 删除物品信息
     * 
     * @param id 物品ID
     * @return 结果
     */
     int deleteGoodsById(String id);
}
