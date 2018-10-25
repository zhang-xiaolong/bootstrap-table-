package com.qf.teacher.web;

import com.alibaba.fastjson.JSONObject;

import com.qf.teacher.model.Teacher;
import com.qf.teacher.service.ServiceTeachers;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class TeacherController {

    /*@RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }*/
    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toPage(@PathVariable String path){
        return path;
    }

    @Autowired
    ServiceTeachers  se;

    //获取数据库数据
    @ResponseBody
    @RequestMapping(value="/users",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public JSONObject teacher(@RequestBody JSONObject jsonObject){
        JSONObject  jsonObject1=se.teacher(jsonObject);
        return jsonObject1;

    }

    //增加记录
    @RequestMapping(value="/addteacher",method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
    public String  addteacher(Teacher teacher){
        se.addteacher(teacher);
        return "T_table_teacher";
    }


    //删除记录
    @RequestMapping(value = "removeteacher",produces = "application/json;charset=UTF-8")
    public String removeteacher(int id){
        se.removeteacher(id);
        return "T_table_teacher";
    }

    //编辑记录前获取当前信息并返回页面
    @RequestMapping(value = "amendteacher",produces = "application/json;charset=UTF-8")
    public String amendteacher(int id, Model model){
        Teacher ts= se.amendteacher(id);
        model.addAttribute("tmodel",ts);
        return "amendteacher";
    }

    //编辑记录
    @RequestMapping(value = "amendteachers",produces =  "application/json;charset=UTF-8")
    public String amendteachers(Teacher teacher){
        se.amendteachers(teacher);
        return "T_table_teacher";
    }

}
