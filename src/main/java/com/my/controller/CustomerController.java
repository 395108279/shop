package com.my.controller;

import com.my.pojo.Customer;
import com.my.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/a")
    public String a() {
        return "showAllCustomer";
    }

    @RequestMapping("/showAllCustomer")
    public String toAllCustomer(Model model) {
        List<Customer> customerList = customerService.queryAllCustom();
        model.addAttribute("customerList", customerList);
        return "showAllCustomer";
    }

    @RequestMapping("/queryCustomer")
    public String queryCustomre(String customerName, Model model) {
        Customer customer = customerService.queryByName(customerName);
        List<Customer> customerList = new ArrayList<Customer>();
        customerList.add(customer);

        if (customer == null) {
            customerList = customerService.queryAllCustom();
            model.addAttribute("error", "未找到");
        }
        model.addAttribute("customerList", customerList);
        return "showAllCustomer";

    }

    @RequestMapping("/toAddCustomer")
    public String toAddCustomer() {
        return "addCustomer";
    }

    @RequestMapping("/addCustomer")
    public String addCustomer(Customer customer) {
        customerService.addCustom(customer);
        return "redirect:/customer/showAllCustomer";
    }

    //    @PathVariable 占位符，和RequestMapping中{}的名称一致
    @RequestMapping("/deleteCustomer/{id}")
    public String deleteCustomer(@PathVariable("id") int id) {
        customerService.deleteCustomById(id);
        return "redirect:/customer/showAllCustomer";
    }


    @RequestMapping("/toUpdateCustomer")
    public String toUpdateCustomer(String cardId, Model model) {
        Customer customer = customerService.queryByCardId(cardId);
        System.out.println(customer);
        model.addAttribute("customer", customer);
        return "updateCustomer";
    }

    @RequestMapping("/updateCustomer")
    public String updateCustomer(Model model, Customer customer) {
        System.out.println(customer);
        customerService.updateCustom(customer);
        Customer customers = customerService.queryByCardId(customer.getCardId());
        model.addAttribute("customers", customers);
        return "redirect:/customer/showAllCustomer";
    }

    //充值金额
    @RequestMapping("/toRechange")
    public String toRechange() {
        return "rechange";
    }

    @RequestMapping("/toRechangeByCustomer")
    public String toRechangeByCustomer(String cardId, Model model) {
        Customer customer = customerService.queryByCardId(cardId);
        System.out.println(customer);
        model.addAttribute("customer", customer);
        return "rechange";
    }

    @RequestMapping("/rechange")
    public String rechange(Customer customer) {
        customerService.updateRechange(customer);
        return "redirect:/customer/showAllCustomer";
    }

}
