package com.my.service;

import com.my.dao.CustomerMapper;
import com.my.pojo.Customer;

import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    private CustomerMapper customerMapper;

    public void setCustomerMapper(CustomerMapper customerMapper) {
        this.customerMapper = customerMapper;
    }

    @Override
    public int addCustom(Customer customer) {
        return customerMapper.addCustom(customer);
    }

    @Override
    public int deleteCustomByTel(String tel) {
        return customerMapper.deleteCustomByTel(tel);
    }

    @Override
    public int deleteCustomById(int id) {
        return customerMapper.deleteCustomById(id);
    }

    @Override
    public int updateCustom(Customer customer) {
        return customerMapper.updateCustom(customer);
    }

    @Override
    public void updateRechange(Customer customer) {
        customerMapper.updateRechange(customer);
    }

    @Override
    public Customer queryByCardId(String cardId) {
        return customerMapper.queryByCardId(cardId);
    }

    @Override
    public Customer queryByName(String customName) {
        return customerMapper.queryByName(customName);
    }

    @Override
    public List<Customer> queryAllCustom() {
        return customerMapper.queryAllCustom();
    }
}
