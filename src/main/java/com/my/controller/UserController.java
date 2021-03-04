package com.my.controller;

import com.my.pojo.User;
import com.my.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    //登录
    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession session) {
        User user1 = userService.userLogin(user);
        if (user1 != null) {
            String username = user1.getUserName();
            session.setAttribute("user", username);
            return "main";
        } else {
            model.addAttribute("Login_error", "账号或者密码错误");
            return "forward:/login.jsp";
        }
    }

    @RequestMapping("/userLogout")
    public String userLogout(HttpSession session) {
        session.invalidate();
        return "main";
    }

    //跳转到登陆页面
    @RequestMapping("/jumpLogin")
    public String jumpLogin() throws Exception {
        return "../login";
    }

    //跳转到成功页面
    @RequestMapping("/success")
    public String jumpSuccess() throws Exception {
        return "success";
    }
}
