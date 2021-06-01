package com.ruoyi.web.controller.fyms;

import com.ruoyi.domain.UsClient;
import com.ruoyi.service.IUsClientService;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 客户信息Controller
 *
 * @author ruoyi
 * @date 2021-05-28
 */
@RestController
@RequestMapping("/system/client")
public class UsClientController extends BaseController
{
    @Autowired
    private IUsClientService usClientService;

    /**
     * 查询客户信息列表
     */
//    @PreAuthorize("@ss.hasPermi('system:client:list')")
    @GetMapping("/list")
    public TableDataInfo list(UsClient usClient)
    {
        startPage();
        List<UsClient> list = usClientService.selectUsClientList(usClient);
        return getDataTable(list);
    }

    /**
     * 导出客户信息列表
     */
//    @PreAuthorize("@ss.hasPermi('system:client:export')")
    @Log(title = "客户信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(UsClient usClient)
    {
        List<UsClient> list = usClientService.selectUsClientList(usClient);
        ExcelUtil<UsClient> util = new ExcelUtil<UsClient>(UsClient.class);
        return util.exportExcel(list, "客户信息数据");
    }

    /**
     * 获取客户信息详细信息
     */
//    @PreAuthorize("@ss.hasPermi('system:client:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return AjaxResult.success(usClientService.selectUsClientById(id));
    }

    /**
     * 新增客户信息
     */
//    @PreAuthorize("@ss.hasPermi('system:client:add')")
    @Log(title = "客户信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UsClient usClient)
    {
        return toAjax(usClientService.insertUsClient(usClient));
    }

    /**
     * 修改客户信息
     */
//    @PreAuthorize("@ss.hasPermi('system:client:edit')")
    @Log(title = "客户信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UsClient usClient)
    {
        return toAjax(usClientService.updateUsClient(usClient));
    }

    /**
     * 删除客户信息
     */
//    @PreAuthorize("@ss.hasPermi('system:client:remove')")
    @Log(title = "客户信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(usClientService.deleteUsClientByIds(ids));
    }
}
