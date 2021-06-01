package com.ruoyi.mapper;

import java.util.List;
import com.ruoyi.domain.UsClient;
import org.apache.ibatis.annotations.Mapper;

/**
 * 客户信息Mapper接口
 *
 * @author ruoyi
 * @date 2021-05-28
 */
@Mapper
public interface UsClientMapper
{
    /**
     * 查询客户信息
     *
     * @param id 客户信息ID
     * @return 客户信息
     */
     UsClient selectUsClientById(String id);

    /**
     * 查询客户信息列表
     *
     * @param usClient 客户信息
     * @return 客户信息集合
     */
     List<UsClient> selectUsClientList(UsClient usClient);

    /**
     * 新增客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
     int insertUsClient(UsClient usClient);

    /**
     * 修改客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
     int updateUsClient(UsClient usClient);

    /**
     * 删除客户信息
     *
     * @param id 客户信息ID
     * @return 结果
     */
     int deleteUsClientById(String id);

    /**
     * 批量删除客户信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
     int deleteUsClientByIds(String[] ids);
}
