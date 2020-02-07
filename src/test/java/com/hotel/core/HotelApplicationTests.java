package com.hotel.core;

import com.hotel.core.utils.Encryption;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;

@SpringBootTest
class HotelApplicationTests {

    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Test
    void contextLoads() {

    }

    @Test
    void Encryption(){
        System.out.println(Encryption.build("user","123456"));
    }

    @Test
    void redisTemplate(){
        redisTemplate.opsForValue().set("k1","v1");
    }

    @Test
    void stringRedisTemplate(){
        stringRedisTemplate.opsForValue().set("k1","v1");
    }

}
