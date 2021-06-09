package com.ruoyi.common.utils;

import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.exception.CustomException;
import org.springframework.stereotype.Component;


import javax.annotation.Resource;

@Component
public class NumUtils {
    @Resource
    private  RedisCache redisCache;

    /**
     * 生成编号的方法
     * @param prefix 编号前缀
     * @param key redis里面的key值
     * @return 拼接后的编号
     */
    public  String getAuto(String prefix, String key) {
        String num = "";
        String date = DateUtils.date();
        Object cacheObject = redisCache.getCacheObject(key);
        if (cacheObject==null){
            throw new CustomException("编号自动生成出错请联系专业人员");
        }
        if (cacheObject.toString().length()==1){
            cacheObject="0"+cacheObject;
        }
        num = prefix + date + cacheObject;
        redisCache.increment(key);

        return num;

    }

}
