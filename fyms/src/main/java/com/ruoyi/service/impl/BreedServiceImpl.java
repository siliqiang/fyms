package com.ruoyi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.domain.Breed;
import com.ruoyi.mapper.BreedMapper;
import com.ruoyi.service.BreedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * 宠物种类Service业务层处理
 *
 * @author ruoyi
 * @date 2021-05-31
 */
@Service
public class BreedServiceImpl implements BreedService
{
    @Autowired
    private BreedMapper breedMapper;

    /**
     * 查询宠物种类
     *
     * @param id 宠物种类ID
     * @return 宠物种类
     */
    @Override
    public Breed selectFyPetBreedById(String id)
    {
        return breedMapper.selectFyPetBreedById(id);
    }

    /**
     * 查询宠物种类列表
     *
     * @param breed 宠物种类
     * @return 宠物种类
     */
    @Override
    public List<Breed> selectFyPetBreedList(Breed breed)
    {
        return breedMapper.selectFyPetBreedList(breed);
    }

    /**
     * 新增宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
    @Override
    public int insertFyPetBreed(Breed breed)
    {
        breed.setId(IdUtils.fastUUID());
        breed.setCreateTime(DateUtils.getNowDate());
        return breedMapper.insertFyPetBreed(breed);
    }

    /**
     * 修改宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
    @Override
    public int updateFyPetBreed(Breed breed)
    {
        breed.setUpdateTime(DateUtils.getNowDate());
        return breedMapper.updateFyPetBreed(breed);
    }

    /**
     * 批量删除宠物种类
     *
     * @param ids 需要删除的宠物种类ID
     * @return 结果
     */
    @Override
    public int deleteFyPetBreedByIds(String[] ids)
    {
        return breedMapper.deleteFyPetBreedByIds(ids);
    }

    /**
     * 删除宠物种类信息
     *
     * @param id 宠物种类ID
     * @return 结果
     */
    @Override
    public int deleteFyPetBreedById(String id)
    {
        return breedMapper.deleteFyPetBreedById(id);
    }
}
