package com.qf.teacher.dao;

import com.alibaba.fastjson.JSONObject;
import com.qf.teacher.model.Teacher;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;


import java.util.List;

/**
 * Created by 初秋 on 2018/10/17.
 */
@Repository
public interface DaoTeacher {

    //分页查询数据并返回
    @Select("<script> select * from t_teacher where 1=1 <if test=\"search!=null and search!=''\"> and tname like concat('%',#{search},'%') </if>  limit #{offset},#{limit}</script>")
    public List<Teacher> teacher(JSONObject jsonObject);

    //查询表内数据总条数
    @Select("<script> select count(*) from t_teacher where 1=1 <if test=\"search!=null and search!=''\"> and tname like concat('%',#{search},'%') </if> </script>")
    public int cooun(JSONObject jsonObject);

    //添加数据
    @Insert("insert into t_teacher (tname,tage,ttime,tsubjects,tremark) values(#{tname},#{tage},#{ttime},#{tsubjects},#{tremark})")
    void addteacher(Teacher teacher);

    //删除数据
    @Delete("delete from t_teacher where tid=#{id}")
    void removeteacher(int id);

    //获取当前ID数据并返回
    @Select("select * from t_teacher where tid=#{id}")
    Teacher amendteacher(int id);

    //修改数据
    @Update("update t_teacher set tname=#{tname},tage=#{tage},ttime=#{ttime},tsubjects=#{tsubjects},tremark=#{tremark} where tid=#{tid}")
    void amendteachers(Teacher teacher);
}
