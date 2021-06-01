package com.ruoyi.service.impl;

import java.util.List;
import java.util.UUID;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.mapper.UsClientMapper;
import com.ruoyi.domain.UsClient;
import com.ruoyi.service.IUsClientService;

/**
 * 客户信息Service业务层处理
 *
 * @author ruoyi
 * @date 2021-05-28
 */
@Service
public class UsClientServiceImpl implements IUsClientService
{
    @Autowired
    private UsClientMapper usClientMapper;

    /**
     * 查询客户信息
     *
     * @param id 客户信息ID
     * @return 客户信息
     */
    @Override
    public UsClient selectUsClientById(String id)
    {
        return usClientMapper.selectUsClientById(id);
    }

    /**
     * 查询客户信息列表
     *
     * @param usClient 客户信息
     * @return 客户信息
     */
    @Override
    public List<UsClient> selectUsClientList(UsClient usClient)
    {
        return usClientMapper.selectUsClientList(usClient);
    }

    /**
     * 新增客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
    @Override
    public int insertUsClient(UsClient usClient)
    {
        usClient.setId(IdUtils.fastUUID());
        usClient.setCreateTime(DateUtils.getNowDate());
        return usClientMapper.insertUsClient(usClient);
    }

    /**
     * 修改客户信息
     *
     * @param usClient 客户信息
     * @return 结果
     */
    @Override
    public int updateUsClient(UsClient usClient)
    {
        usClient.setUpdateTime(DateUtils.getNowDate());
        return usClientMapper.updateUsClient(usClient);
    }

    /**
     * 批量删除客户信息
     *
     * @param ids 需要删除的客户信息ID
     * @return 结果
     */
    @Override
    public int deleteUsClientByIds(String[] ids)
    {
        return usClientMapper.deleteUsClientByIds(ids);
    }

    /**
     * 删除客户信息信息
     *
     * @param id 客户信息ID
     * @return 结果
     */
    @Override
    public int deleteUsClientById(String id)
    {
        return usClientMapper.deleteUsClientById(id);
    }

    public class TestService
    {
        public String helloTest()
        {
            return "hello";
        }
    }
}
