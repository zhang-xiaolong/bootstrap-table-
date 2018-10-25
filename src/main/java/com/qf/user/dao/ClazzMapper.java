package com.qf.user.dao;

import com.qf.user.model.Clazz;
import com.qf.user.model.Teacher;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ClazzMapper {
    public List<Clazz> select(String str);
    public List<Clazz> selectAll();
    public void remove(Integer id);
    public Integer countClazz(Map<String, Object> map);
    public List<Clazz> listClazz(Map<String, Object> map);
    public List<Teacher> selectTeacher();
    public void edit(Clazz clazz);
    public void save(Clazz clazz);
    public List<Teacher> selectOneTeacher(Integer thid);
}
