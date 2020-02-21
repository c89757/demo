package com.example.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
    private String uid;
    private String identity; //身份
    private String password;
    private String name;
    private Integer age;
    private Boolean sex;
    private String tel;
    private String Department;//科室
}
