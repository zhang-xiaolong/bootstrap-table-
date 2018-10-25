package com.qf.student.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.student.model.Clazz;
import com.qf.student.model.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentMapper {
    public List<Student> selectData(JSONObject jsonObject);
    public Integer countStudent(JSONObject jsonObject);
    public List<Clazz> selectClazz();
    public void updateStu(Student student);
    public void deleteStu(Integer id);
    public void insertStu(Student student);
}
