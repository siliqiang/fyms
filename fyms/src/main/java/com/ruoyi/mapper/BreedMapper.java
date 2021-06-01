package com.ruoyi.mapper;


import com.ruoyi.domain.Breed;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 宠物种类Mapper接口
 *
 * @author ruoyi
 * @date 2021-05-31
 */
@Mapper
public interface BreedMapper
{
    /**
     * 查询宠物种类
     *
     * @param id 宠物种类ID
     * @return 宠物种类
     */
    public Breed selectFyPetBreedById(String id);

    /**
     * 查询宠物种类列表
     *
     * @param breed 宠物种类
     * @return 宠物种类集合
     */
    public List<Breed> selectFyPetBreedList(Breed breed);

    /**
     * 新增宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
    public int insertFyPetBreed(Breed breed);

    /**
     * 修改宠物种类
     *
     * @param breed 宠物种类
     * @return 结果
     */
    public int updateFyPetBreed(Breed breed);

    /**
     * 删除宠物种类
     *
     * @param id 宠物种类ID
     * @return 结果
     */
    public int deleteFyPetBreedById(String id);

    /**
     * 批量删除宠物种类
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteFyPetBreedByIds(String[] ids);
}
