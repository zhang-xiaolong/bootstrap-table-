package com.qf.user.service.impl;

import org.springframework.stereotype.Service;
import com.qf.user.dao.ClazzMapper;
import com.qf.user.model.Clazz;
import com.qf.user.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.awt.print.Book;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional(isolation= Isolation.READ_COMMITTED,propagation= Propagation.REQUIRED)
public class ClazzService {

    @Autowired
    private ClazzMapper dao;

    public List<Clazz> findAll(){
        List<Clazz> list = dao.selectAll();
        return list ;

    }



    public List<Clazz> search(String str){
        System.out.println(str);
        return dao.select(str);
    }

    public void delete(Integer id) {
        dao.remove(id);
    }

    public Map<String,Object> getAllByPageAndSearch(Map<String,Object> map){
        Integer count = dao.countClazz(map);//total
        List<Clazz> list = dao.listClazz(map);//rows
        Map<String,Object> m= new HashMap<String,Object>();
        m.put("total", count);
        m.put("rows", list);
        return m ;
    }

    public List<Teacher> findTeacher(){
        return dao.selectTeacher();
    }

    public void modify(Clazz clazz){
        dao.edit(clazz);
    }

    public void add(Clazz clazz){
        dao.save(clazz);
    }

    public List<Teacher> teacher(Integer thid){
        return dao.selectOneTeacher(thid);
    }
}
