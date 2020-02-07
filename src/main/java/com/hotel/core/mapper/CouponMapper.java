package com.hotel.core.mapper;

import com.hotel.core.entity.Coupon;

public interface CouponMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Coupon coupon);

    int insertSelective(Coupon coupon);

    Coupon selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Coupon coupon);

    int updateByPrimaryKey(Coupon coupon);

}