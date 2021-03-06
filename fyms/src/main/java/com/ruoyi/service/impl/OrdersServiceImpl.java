package com.ruoyi.service.impl;

import java.math.BigDecimal;
import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.OrdersMapper;
import com.ruoyi.domain.Orders;
import com.ruoyi.service.IOrdersService;

/**
 * 订单Service业务层处理
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Service
public class OrdersServiceImpl implements IOrdersService {
    @Autowired
    private OrdersMapper ordersMapper;

    /**
     * 查询订单
     *
     * @param id 订单ID
     * @return 订单
     */
    @Override
    public Orders selectOrdersById(String id) {
        return ordersMapper.selectOrdersById(id);
    }

    /**
     * 查询订单列表
     *
     * @param orders 订单
     * @return 订单
     */
    @Override
    public List<Orders> selectOrdersList(Orders orders) {
        List<Orders> ordersList = ordersMapper.selectOrdersList(orders);
        ordersList.stream().forEach(a -> a.setProfit(a.getSellingPrice().subtract(a.getPrice()).multiply(BigDecimal.valueOf(a.getQuantity()))));
        return ordersList;
    }

    /**
     * 新增订单
     *
     * @param orders 订单
     * @return 结果
     */
    @Override
    public int insertOrders(Orders orders) {

        orders.setId(IdUtils.fastUUID());
        orders.setCreateTime(DateUtils.getNowDate());
        return ordersMapper.insertOrders(orders);
    }

    /**
     * 修改订单
     *
     * @param orders 订单
     * @return 结果
     */
    @Override
    public int updateOrders(Orders orders) {
        orders.setUpdateTime(DateUtils.getNowDate());
        return ordersMapper.updateOrders(orders);
    }

    /**
     * 批量删除订单
     *
     * @param ids 需要删除的订单ID
     * @return 结果
     */
    @Override
    public int deleteOrdersByIds(String[] ids) {
        return ordersMapper.deleteOrdersByIds(ids);
    }

    /**
     * 删除订单信息
     *
     * @param id 订单ID
     * @return 结果
     */
    @Override
    public int deleteOrdersById(String id) {
        return ordersMapper.deleteOrdersById(id);
    }
}
