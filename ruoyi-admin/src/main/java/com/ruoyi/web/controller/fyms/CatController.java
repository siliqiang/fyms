package com.ruoyi.web.controller.fyms;

import java.util.List;

import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.domain.Cat;
import com.ruoyi.service.ICatService;
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

/**
 * 猫咪管理Controller
 *
 * @author ruoyi
 * @date 2021-06-01
 */
@RestController
@RequestMapping("/system/cat")
public class CatController extends BaseController {
    @Autowired
    private ICatService catService;

    /**
     * 查询猫咪管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:cat:list')")
    @GetMapping("/list")
    public TableDataInfo list(Cat cat) {
        startPage();
        List<Cat> list = catService.selectCatList(cat);
        return getDataTable(list);
    }

    /**
     * 导出猫咪管理列表
     */
    @PreAuthorize("@ss.hasPermi('system:cat:export')")
    @Log(title = "猫咪管理", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(Cat cat) {
        List<Cat> list = catService.selectCatList(cat);
        ExcelUtil<Cat> util = new ExcelUtil<Cat>(Cat.class);
        return util.exportExcel(list, "猫咪管理数据");
    }

    /**
     * 获取猫咪管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:cat:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id) {
        return AjaxResult.success(catService.selectCatById(id));
    }

    /**
     * 新增猫咪管理
     */
    @PreAuthorize("@ss.hasPermi('system:cat:add')")
    @Log(title = "猫咪管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Cat cat) {
        return toAjax(catService.insertCat(cat));
    }

    /**
     * 修改猫咪管理
     */
    @PreAuthorize("@ss.hasPermi('system:cat:edit')")
    @Log(title = "猫咪管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Cat cat) {
        return toAjax(catService.updateCat(cat));
    }

    /**
     * 删除猫咪管理
     */
    @PreAuthorize("@ss.hasPermi('system:cat:remove')")
    @Log(title = "猫咪管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids) {
        return toAjax(catService.deleteCatByIds(ids));
    }
}
