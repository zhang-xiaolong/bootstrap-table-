package com.qf.teacher.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.teacher.dao.DaoTeacher;

import com.qf.teacher.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by 初秋 on 2018/10/17.
 */
@Service
public class ServiceTeachers implements ServiceTeacher {

    @Autowired
   private  DaoTeacher dao;

    //获取数据
    public JSONObject teacher(JSONObject jsonObject) {
        JSONObject js=new JSONObject();
        List<Teacher> us=dao.teacher(jsonObject);
        js.put("total",dao.cooun(jsonObject));
        js.put("rows",us);
        return js;
    }

    //新增数据
    public void addteacher(Teacher teacher) {
        dao.addteacher(teacher);
    }

    //删除数据
    public void removeteacher(int id) {
        dao.removeteacher(id);
    }

    //获取当前数据并返回
    public Teacher amendteacher(int id) {
        return dao.amendteacher(id);
    }

    //修改数据
    public void amendteachers(Teacher teacher) {
        dao.amendteachers(teacher);
    }


}
