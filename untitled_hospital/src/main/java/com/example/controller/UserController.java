package com.example.controller;

import com.example.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {

    @PostMapping("/login")
    public String userLogin(User user, HttpServletRequest request){
        String uid = user.getUid();
        String username = "111";
        request.getSession().setAttribute("user",username);
        return "redirect:/user/main";
    }

    @GetMapping("/main")
    public String main(){
        return "/user/main";
    }

}
