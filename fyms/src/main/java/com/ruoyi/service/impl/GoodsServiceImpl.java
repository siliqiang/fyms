package com.ruoyi.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.GoodsMapper;
import com.ruoyi.domain.Goods;
import com.ruoyi.service.IGoodsService;

/**
 * 物品Service业务层处理
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Service
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private GoodsMapper goodsMapper;

    /**
     * 查询物品
     *
     * @param id 物品ID
     * @return 物品
     */
    @Override
    public Goods selectGoodsById(String id) {
        return goodsMapper.selectGoodsById(id);
    }

    /**
     * 查询物品列表
     *
     * @param goods 物品
     * @return 物品
     */
    @Override
    public List<Goods> selectGoodsList(Goods goods) {
        return goodsMapper.selectGoodsList(goods);
    }

    /**
     * 新增物品
     *
     * @param goods 物品
     * @return 结果
     */
    @Override
    public int insertGoods(Goods goods) {
        goods.setId(IdUtils.fastUUID());
        goods.setCreateTime(DateUtils.getNowDate());
        return goodsMapper.insertGoods(goods);
    }

    /**
     * 修改物品
     *
     * @param goods 物品
     * @return 结果
     */
    @Override
    public int updateGoods(Goods goods) {
        goods.setUpdateTime(DateUtils.getNowDate());
        return goodsMapper.updateGoods(goods);
    }

    /**
     * 批量删除物品
     *
     * @param ids 需要删除的物品ID
     * @return 结果
     */
    @Override
    public int deleteGoodsByIds(String[] ids) {
        return goodsMapper.deleteGoodsByIds(ids);
    }

    /**
     * 删除物品信息
     *
     * @param id 物品ID
     * @return 结果
     */
    @Override
    public int deleteGoodsById(String id) {
        return goodsMapper.deleteGoodsById(id);
    }
}
