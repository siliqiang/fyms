package com.ruoyi.service;


import com.ruoyi.domain.Breed;

import java.util.List;

/**
 * 宠物种类Service接口
 *
 * @author ruoyi
 * @date 2021-05-31
 */
public interface BreedService
{
    /**
     * 查询宠物种类
     *
     * @param id 宠物种类ID
     * @return 宠物种类
     */
     Breed selectFyPetBreedById(String id);

    /**
     * 查询宠物种类列表
     *
     * @param breed 宠物种类
     * @return 宠物种类集合
     */
    List<Breed> selectFyPetBreedList(Breed breed);

    /**
     * 新增宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
     int insertFyPetBreed(Breed breed);

    /**
     * 修改宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
     int updateFyPetBreed(Breed breed);

    /**
     * 批量删除宠物种类
     *
     * @param ids 需要删除的宠物种类ID
     * @return 结果
     */
     int deleteFyPetBreedByIds(String[] ids);

    /**
     * 删除宠物种类信息
     *
     * @param id 宠物种类ID
     * @return 结果
     */
     int deleteFyPetBreedById(String id);
}
