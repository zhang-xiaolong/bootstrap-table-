package com.qf.student.service;

import com.alibaba.fastjson.JSONObject;
import com.qf.student.dao.StudentMapper;
import com.qf.student.model.Clazz;
import com.qf.student.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation=Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED)
public class StudentService {
    @Autowired
    private StudentMapper dao;
    public JSONObject dataStudent(JSONObject jsonObject){
        JSONObject jo = new JSONObject();
        jo.put("total", dao.countStudent(jsonObject));
        jo.put("rows",dao.selectData(jsonObject));
        return jo;
    }
    public List<Clazz> findClazz(){
        return dao.selectClazz();
    }
    public void change(Student student){
        dao.updateStu(student);
    }
    public void remove(Integer id){
        dao.deleteStu(id);
    }
    public void addStu(Student student){
        dao.insertStu(student);
    }
}
