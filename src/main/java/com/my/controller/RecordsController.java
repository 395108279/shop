package com.my.controller;

import com.my.pojo.Customer;
import com.my.pojo.Records;
import com.my.service.CustomerService;
import com.my.service.RecordsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/records")
public class RecordsController {


    @Autowired
    private RecordsService recordsService;

    //查询全部记录
    @RequestMapping("/showAllRecords")
    public String showAllRecords(Model model) {
        List<Records> recordslist = recordsService.queryAllRecords();
        model.addAttribute("recordslist", recordslist);
        return "showAllRecords";
    }

    //根据姓名查询消费记录
    @RequestMapping("queryRecordsByName")
    public String queryRecordsByName(String customName, Model model) {
        List<Records> recordslist = recordsService.queryByName(customName);
        if (recordslist == null) {
            recordslist = recordsService.queryAllRecords();
            model.addAttribute("error", "未找到");
        }
        model.addAttribute("recordslist", recordslist);
        System.out.println("================部分");
        return "showAllRecords";
    }

    @RequestMapping("/toAddRecords")
    public String toAddRecords() {
        return "addRecords";
    }

    @RequestMapping("/addRecords")
    public String addRecords(Records records, String time) throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = simpleDateFormat.parse(time);
        records.setConsumeTime(date);
        System.out.println(records);
        recordsService.addRecords(records);
        return "redirect:/records/showAllRecords";
    }

    //    @PathVariable 占位符，和RequestMapping中{}的名称一致
    @RequestMapping("/deleteRecords/{id}")
    public String deleteRecords(@PathVariable("id") int id) {
        recordsService.deleteRecordsById(id);
        return "redirect:/records/showAllRecords";
    }

    @RequestMapping("/toUpdateRecords/{id}")
    public String toUpdateRecords(@PathVariable("id") int id, Model model) {
        Records records = recordsService.queryById(id);
        model.addAttribute(records);
        return "updateRecords";
    }

    @RequestMapping("/updateRecords")
    public String updateRecords(Model model, Records records) {
        System.out.println("==========>" + records);
        recordsService.updateRecords(records);
        Records record = recordsService.queryById(records.getId());
        model.addAttribute(record);

        return "redirect:/records/showAllRecords";
    }

    //去到查询界面
    @RequestMapping("/toQueryRecords")
    public String toQueryRecords(Model model) {
        List<Records> recordslist = recordsService.queryAllRecords();
        model.addAttribute("recordslist", recordslist);
        return "/queryRecords";
    }

    @RequestMapping("/queryRecords")
    public String queryRecords(Model model, Records records) {
        List<Records> recordslist = recordsService.queryRecords(records);
        if (recordslist == null) {
            recordslist = recordsService.queryAllRecords();
            model.addAttribute("error", "未找到");
        }
        model.addAttribute("recordslist", recordslist);
        System.out.println("================部分");

        return "/queryRecords";
    }
}
