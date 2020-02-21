package com.example.service.Impl;

import com.example.dao.AdminDao;
import com.example.pojo.Admin;
import com.example.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service("AdminService")
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    public Admin login(Admin admin) {

        return adminDao.login(admin);
    }

    public List<Admin> findall() {
        return adminDao.findall();
    }

    public void updateAdmin(Admin admin) {
        System.out.println("updateAdmin");
        adminDao.updateAdmin(admin);
    }


}
