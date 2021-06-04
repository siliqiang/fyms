package com.ruoyi.service.impl;

import java.util.List;

import com.ruoyi.common.exception.CustomException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.domain.Breed;
import com.ruoyi.domain.Cat;
import com.ruoyi.mapper.BreedMapper;
import com.ruoyi.service.BreedService;
import com.ruoyi.service.ICatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


/**
 * 宠物种类Service业务层处理
 *
 * @author ruoyi
 * @date 2021-05-31
 */
@Service
public class BreedServiceImpl implements BreedService {
    @Autowired
    private BreedMapper breedMapper;

    @Resource
    private ICatService catService;

    /**
     * 查询宠物种类
     *
     * @param id 宠物种类ID
     * @return 宠物种类
     */
    @Override
    public Breed selectFyPetBreedById(String id) {
        return breedMapper.selectFyPetBreedById(id);
    }

    /**
     * 查询宠物种类列表
     *
     * @param breed 宠物种类
     * @return 宠物种类
     */
    @Override
    public List<Breed> selectFyPetBreedList(Breed breed) {
        return breedMapper.selectFyPetBreedList(breed);
    }

    /**
     * 新增宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
    @Override
    public int insertFyPetBreed(Breed breed) {
        breed.setId(IdUtils.fastUUID());
        //创建人
        breed.setCreateBy(SecurityUtils.getUsername());
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
    public int updateFyPetBreed(Breed breed) {
        //跟新时间
        breed.setUpdateTime(DateUtils.getNowDate());
        //跟新人
        breed.setUpdateBy(SecurityUtils.getUsername());
        return breedMapper.updateFyPetBreed(breed);
    }

    /**
     * 批量删除宠物种类
     *
     * @param ids 需要删除的宠物种类ID
     * @return 结果
     */
    @Override
    public int deleteFyPetBreedByIds(String[] ids) {
        for (String id : ids) {
            //如果该种类被其他地方使用则无法删除
            Cat cat = new Cat();
            cat.setBreedId(id);
            List<Cat> cats = catService.selectCatList(cat);
            if (cats.size() > 0) {
                throw new CustomException("该种类被使用无法删除");
            }
        }
        return breedMapper.deleteFyPetBreedByIds(ids);
    }

    /**
     * 删除宠物种类信息
     *
     * @param id 宠物种类ID
     * @return 结果
     */
    @Override
    public int deleteFyPetBreedById(String id) {
        //如果该种类被其他地方使用则无法删除
        Cat cat = new Cat();
        cat.setBreedId(id);
        List<Cat> cats = catService.selectCatList(cat);
        if (cats.size() > 0) {
            throw new CustomException("该种类被使用无法删除");
        }
        return breedMapper.deleteFyPetBreedById(id);
    }
}
