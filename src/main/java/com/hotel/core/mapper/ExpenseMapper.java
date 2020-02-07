package com.hotel.core.mapper;

import com.hotel.core.entity.Expense;

public interface ExpenseMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(Expense expense);

    int insertSelective(Expense expense);

    Expense selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Expense expense);

    int updateByPrimaryKey(Expense expense);

}