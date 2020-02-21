package com.example.service;

import com.example.pojo.Admin;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

public interface AdminService {

    public Admin login(Admin admin);

    List<Admin> findall();

    void updateAdmin(Admin admin);

}
