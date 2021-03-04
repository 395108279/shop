package com.my.service;

import com.my.pojo.Customer;

import java.util.List;

public interface CustomerService {
    //    添加一个顾客信息
    int addCustom(Customer customer);

    //    删除一个顾客信息
    int deleteCustomByTel(String tel);

    int deleteCustomById(int id);

    //修改一个顾客信息
    int updateCustom(Customer customer);

    //会员充值
    void updateRechange(Customer customer);

    //    查询顾客信息
    Customer queryByCardId(String cardId);

    Customer queryByName(String customName);

    //查询全部顾客信息
    List<Customer> queryAllCustom();

}
