package com.example.controller;


import com.example.pojo.Admin;
import com.example.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

//@Controller
@Controller()
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("/login")
    public String login(Model model){
        return "admin/login";
    }

    @PostMapping("/login")
    public String login1(Admin admin, HttpServletRequest request, HttpServletResponse response,Model model) throws Exception {
        Admin admin1 = adminService.login(admin);
        HttpSession session=request.getSession();
        if(admin1!=null && !admin1.equals("")){
            System.out.println(admin1);
            session.setAttribute("user",admin1);
            return "redirect:/admin/main";
        }
        model.addAttribute("error","账号/密码错误");
        return "admin/login";
    }

    @GetMapping("/main")
    public String mine(HttpServletRequest request, HttpServletResponse response,Model model){
        Admin admin = (Admin) request.getSession().getAttribute("user");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
        Date LastLoginTime = admin.getLastlogintime();
        model.addAttribute("lastLoginTime",LastLoginTime);
        if(LastLoginTime!=null && !LastLoginTime.equals("")){
            System.out.println("------");
            String lastLoginTime = simpleDateFormat.format(LastLoginTime);
            model.addAttribute("lastLoginTime",lastLoginTime);
        }
        model.addAttribute("lastLoginIp",admin.getLastloginip());
        model.addAttribute("username",admin.getUsername());
        String ip = request.getRemoteAddr();
        Date date = new Date();
        admin.setLastlogintime(date);
        admin.setLastloginip(ip);
        adminService.updateAdmin(admin);
        return "admin/main";
    }
}
