package com.my.dao;

import com.my.pojo.Customer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerMapper {
    //    添加一个顾客信息
    int addCustom(Customer customer);

    //    删除一个顾客信息
    int deleteCustomByTel(@Param("tel") String tel);

    int deleteCustomById(@Param("id") int id);

    //修改一个顾客信息
    int updateCustom(Customer customer);

    //消费后更新卡上余额
    void updateMoney(Customer customer);

    //充值金额后更新卡上余额
    void updateRechange(Customer customer);

    //    查询顾客信息
    Customer queryByCardId(@Param("cardId") String cardId);

    Customer queryByName(String customName);

    //查询全部顾客信息
    List<Customer> queryAllCustom();

}
