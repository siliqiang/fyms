package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.Goods;
import org.apache.ibatis.annotations.Mapper;

/**
 * 物品Mapper接口
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Mapper
public interface GoodsMapper
{
    /**
     * 查询物品
     *
     * @param id 物品ID
     * @return 物品
     */
    public Goods selectGoodsById(String id);

    /**
     * 查询物品列表
     *
     * @param goods 物品
     * @return 物品集合
     */
    public List<Goods> selectGoodsList(Goods goods);

    /**
     * 新增物品
     *
     * @param goods 物品
     * @return 结果
     */
    public int insertGoods(Goods goods);

    /**
     * 修改物品
     *
     * @param goods 物品
     * @return 结果
     */
    public int updateGoods(Goods goods);

    /**
     * 删除物品
     *
     * @param id 物品ID
     * @return 结果
     */
    public int deleteGoodsById(String id);

    /**
     * 批量删除物品
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGoodsByIds(String[] ids);
}
