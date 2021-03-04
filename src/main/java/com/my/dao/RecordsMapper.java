package com.my.dao;

import com.my.pojo.Records;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface RecordsMapper {

    int addRecords(Records records);

    int deleteRecordsById(@Param("id") int id);

    int updateRecords(Records records);

    Records queryById(Records records);

    void updateMoney(Records records);

    List<Records> queryByName(String customName);

    List<Records> queryRecords(Records records);

    List<Records> queryAllRecords();
}
