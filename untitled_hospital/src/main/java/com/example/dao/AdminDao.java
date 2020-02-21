package com.example.dao;

import com.example.pojo.Admin;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface AdminDao {

    @Select("select * from admin where username = #{username} and password = #{password}")
    public Admin login(Admin admin);

    @Select("select * from admin")
    public List<Admin> findall();

    @Update("update admin set username=#{username},password=#{password},lastLoginIp=#{lastloginip},lastLoginTime=#{lastlogintime} where id = #{id}")
    void updateAdmin(Admin admin);

}
