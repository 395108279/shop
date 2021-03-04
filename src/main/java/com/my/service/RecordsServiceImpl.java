package com.my.service;

import com.my.dao.CustomerMapper;
import com.my.dao.RecordsMapper;
import com.my.pojo.Customer;
import com.my.pojo.Records;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordsServiceImpl implements RecordsService {

    @Autowired
    private RecordsMapper recordsMapper;
    @Autowired
    private CustomerMapper customerMapper;

    public void setRecordsMapper(RecordsMapper recordsMapper) {
        this.recordsMapper = recordsMapper;
    }

    //刷卡消费
    @Override
    public int addRecords(Records records) {
        Customer customer = new Customer();
        customer.setMoney(records.getMoney());
        customer.setCardId(records.getCardId());
        try {
            Customer cardId = customerMapper.queryByCardId(records.getCardId());
            records.setTel(cardId.getTel());
            records.setCustomName(cardId.getCustomName());
        } catch (Exception e) {
            System.out.println("报错了");
        }
        customerMapper.updateMoney(customer);
        return recordsMapper.addRecords(records);
    }

    @Override
    public int deleteRecordsById(int id) {
        return recordsMapper.deleteRecordsById(id);
    }

    @Override
    public int updateRecords(Records records) {
        return recordsMapper.updateRecords(records);
    }

    @Override
    public Records queryById(int id) {
        Records records = new Records();
        records.setId(id);
        return recordsMapper.queryById(records);
    }

    @Override
    public List<Records> queryByName(String customName) {
        return recordsMapper.queryByName(customName);
    }

    @Override
    public List<Records> queryAllRecords() {
        return recordsMapper.queryAllRecords();
    }

    @Override
    public List<Records> queryRecords(Records records) {
        return recordsMapper.queryRecords(records);
    }
}
