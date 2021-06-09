package com.ruoyi.service.impl;

import java.util.List;

import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.enums.redisKey;
import com.ruoyi.common.exception.CustomException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.NumUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.domain.Cat;
import com.ruoyi.mapper.CatMapper;
import com.ruoyi.service.ICatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * 猫咪管理Service业务层处理
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@Service
public class CatServiceImpl implements ICatService {
    @Autowired
    private CatMapper catMapper;

    @Autowired
    private NumUtils numUtils;
    //猫咪编号的前缀
    private final String M = "M";

    /**
     * 查询猫咪管理
     *
     * @param id 猫咪管理ID
     * @return 猫咪管理
     */
    @Override
    public Cat selectCatById(String id) {
        return catMapper.selectCatById(id);
    }

    /**
     * 查询猫咪管理列表
     *
     * @param cat 猫咪管理
     * @return 猫咪管理
     */
    @Override
    public List<Cat> selectCatList(Cat cat) {
        return catMapper.selectCatList(cat);
    }

    /**
     * 新增猫咪管理
     *
     * @param cat 猫咪管理
     * @return 结果
     */
    @Override
    public int insertCat(Cat cat) {
        //获取猫咪的编号并且set进去
        cat.setNum(numUtils.getAuto(M, redisKey.CAT_NUM.toString()));
        Cat newCat = new Cat();
        newCat.setNum(cat.getNum());
        List<Cat> cats = selectCatList(newCat);
        if (cats.size() > 0) {
            throw new CustomException("猫咪编号重复");
        }
        //生成uuid
        cat.setId(IdUtils.fastUUID());
        //创建人
        cat.setCreateBy(SecurityUtils.getUsername());
        //创建时间
        cat.setCreateTime(DateUtils.getNowDate());

        return catMapper.insertCat(cat);
    }

    /**
     * 修改猫咪管理
     *
     * @param cat 猫咪管理
     * @return 结果
     */
    @Override
    public int updateCat(Cat cat) {
        cat.setUpdateTime(DateUtils.getNowDate());
        cat.setUpdateBy(SecurityUtils.getUsername());
        return catMapper.updateCat(cat);
    }

    /**
     * 批量删除猫咪管理
     *
     * @param ids 需要删除的猫咪管理ID
     * @return 结果
     */
    @Override
    public int deleteCatByIds(String[] ids) {
        return catMapper.deleteCatByIds(ids);
    }

    /**
     * 删除猫咪管理信息
     *
     * @param id 猫咪管理ID
     * @return 结果
     */
    @Override
    public int deleteCatById(String id) {
        return catMapper.deleteCatById(id);
    }
}
