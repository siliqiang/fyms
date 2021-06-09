import com.ruoyi.RuoYiApplication;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.enums.OperatorType;
import com.ruoyi.common.enums.redisKey;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.NumUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.support.atomic.RedisAtomicInteger;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = RuoYiApplication.class)
public class demo {
    @Resource
    private RedisCache redisCache;

    @Autowired
    private NumUtils numUtils;

    @Test
    public void demo(){
        redisKey catNum = redisKey.CAT_NUM;
        System.out.println(catNum);
//        Object m = redisCache.getCacheObject("CAT_NUM");
//       System.out.println(m );
        String auto = numUtils.getAuto("M", "CAT_NUM");
        System.out.println(auto);
    }

}
