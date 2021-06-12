package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.Orders;
import org.apache.ibatis.annotations.Mapper;

/**
 * 订单Mapper接口
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Mapper
public interface OrdersMapper
{
    /**
     * 查询订单
     *
     * @param id 订单ID
     * @return 订单
     */
     Orders selectOrdersById(String id);

    /**
     * 查询订单列表
     *
     * @param orders 订单
     * @return 订单集合
     */
    List<Orders> selectOrdersList(Orders orders);

    /**
     * 新增订单
     *
     * @param orders 订单
     * @return 结果
     */
     int insertOrders(Orders orders);

    /**
     * 修改订单
     *
     * @param orders 订单
     * @return 结果
     */
    int updateOrders(Orders orders);

    /**
     * 删除订单
     *
     * @param id 订单ID
     * @return 结果
     */
     int deleteOrdersById(String id);

    /**
     * 批量删除订单
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
     int deleteOrdersByIds(String[] ids);
}
