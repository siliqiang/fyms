package com.ruoyi.service;

import java.util.List;
import com.ruoyi.domain.UsClient;

/**
 * 客户信息Service接口
 *
 * @author ruoyi
 * @date 2021-05-28
 */
public interface IUsClientService
{
    /**
     * 查询客户信息
     *
     * @param id 客户信息ID
     * @return 客户信息
     */
    public UsClient selectUsClientById(String id);

    /**
     * 查询客户信息列表
     *
     * @param usClient 客户信息
     * @return 客户信息集合
     */
    public List<UsClient> selectUsClientList(UsClient usClient);

    /**
     * 新增客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
    public int insertUsClient(UsClient usClient);

    /**
     * 修改客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
    public int updateUsClient(UsClient usClient);

    /**
     * 批量删除客户信息
     *
     * @param ids 需要删除的客户信息ID
     * @return 结果
     */
    public int deleteUsClientByIds(String[] ids);

    /**
     * 删除客户信息信息
     *
     * @param id 客户信息ID
     * @return 结果
     */
    public int deleteUsClientById(String id);
}
