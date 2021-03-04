package com.my.service;

import com.my.pojo.Records;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordsService {

    int addRecords(Records records);

    int deleteRecordsById(int id);

    int updateRecords(Records records);

    Records queryById(int id);

    List<Records> queryByName(String customName);

    List<Records> queryAllRecords();

    List<Records> queryRecords(Records records);
}
