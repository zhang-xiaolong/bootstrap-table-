package com.qf.student.web;

import com.alibaba.fastjson.JSONObject;
import com.qf.student.model.Clazz;
import com.qf.student.model.Student;
import com.qf.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller

public class MyController {
    @Autowired
    private StudentService ser;

    /*@RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";
    }*/

   /* @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toPage(@PathVariable String path){
        return path;
    }*/

    //搜索分页
    @ResponseBody
    @RequestMapping("/student.action")
    public JSONObject dataStudent(@RequestBody JSONObject jsonobject){
        jsonobject = ser.dataStudent(jsonobject);
        System.out.println(jsonobject);
        return jsonobject;
    }
    //查询全部班级信息
    @RequestMapping("/clazz.action")
    @ResponseBody
    public List<Clazz> slectClazz(){
    List<Clazz> list = ser.findClazz();
    return list;
    }
    //修改
    @RequestMapping("/update.action")
    public void update(Student student, HttpServletResponse response) throws IOException {
    ser.change(student);
    response.setCharacterEncoding("utf-8");
    response.getWriter().write("修改成功！");
    }
    //删除
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id")Integer id) throws IOException {
    ser.remove(id);
    return "stuMes";
    }
    //添加
    @RequestMapping("/insert.action")
    public void insert(Student student,HttpServletResponse response) throws IOException {
        ser.addStu(student);
        response.setCharacterEncoding("utf-8");
        response.getWriter().write("添加成功！");
    }
}
