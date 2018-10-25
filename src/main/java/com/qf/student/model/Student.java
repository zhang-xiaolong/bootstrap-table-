package com.qf.student.model;

public class Student {
    private Integer id;
    private String sname;
    private Integer age;
    private String sex;
    private Clazz clazz;
    private Integer cid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setClazz(Clazz clazz) {
        this.clazz = clazz;
    }

    public String getSname() {
        return sname;
    }

    public Integer getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

    public Clazz getClazz() {
        return clazz;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }
}
