package com.qf.teacher.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.teacher.model.Teacher;
import org.springframework.stereotype.Service;

/**
 * Created by 初秋 on 2018/10/17.
 */

public interface ServiceTeacher {


    public JSONObject teacher(JSONObject jsonObject);

    public void addteacher(Teacher teacher);

    void removeteacher(int id);

    public Teacher amendteacher(int id);

    void amendteachers(Teacher teacher);
}
