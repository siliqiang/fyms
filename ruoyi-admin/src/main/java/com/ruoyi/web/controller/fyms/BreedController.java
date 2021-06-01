package com.ruoyi.web.controller.fyms;



import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.domain.Breed;
import com.ruoyi.service.BreedService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.core.page.TableDataInfo;

import java.util.List;

/**
 * 宠物种类Controller
 *
 * @author ruoyi
 * @date 2021-05-31
 */
@RestController
@RequestMapping("/system/breed")
public class BreedController extends BaseController
{
    @Autowired
    private BreedService fyPetBreedService;

    /**
     * 查询宠物种类列表
     */
    @PreAuthorize("@ss.hasPermi('system:breed:list')")
    @GetMapping("/list")
    public TableDataInfo list(Breed breed)
    {
        startPage();
        List<Breed> list = fyPetBreedService.selectFyPetBreedList(breed);
        return getDataTable(list);
    }

    /**
     * 查询宠物种类列表所有
     */

    @GetMapping("/list/all")
    public AjaxResult listAll(Breed breed)
    {
        return AjaxResult.success(fyPetBreedService.selectFyPetBreedList(breed));
    }

    /**
     * 导出宠物种类列表
     */
    @PreAuthorize("@ss.hasPermi('system:breed:export')")
    @Log(title = "宠物种类", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Breed breed)
    {
        List<Breed> list = fyPetBreedService.selectFyPetBreedList(breed);
        ExcelUtil<Breed> util = new ExcelUtil<Breed>(Breed.class);
        return util.exportExcel(list, "宠物种类数据");
    }

    /**
     * 获取宠物种类详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:breed:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(fyPetBreedService.selectFyPetBreedById(id));
    }

    /**
     * 新增宠物种类
     */
    @PreAuthorize("@ss.hasPermi('system:breed:add')")
    @Log(title = "宠物种类", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Breed breed)
    {
        return toAjax(fyPetBreedService.insertFyPetBreed(breed));
    }

    /**
     * 修改宠物种类
     */
    @PreAuthorize("@ss.hasPermi('system:breed:edit')")
    @Log(title = "宠物种类", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Breed breed)
    {
        return toAjax(fyPetBreedService.updateFyPetBreed(breed));
    }

    /**
     * 删除宠物种类
     */
    @PreAuthorize("@ss.hasPermi('system:breed:remove')")
    @Log(title = "宠物种类", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(fyPetBreedService.deleteFyPetBreedByIds(ids));
    }
}
