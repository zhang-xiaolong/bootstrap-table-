package com.qf.user.model;

public class Clazz {

    private Integer id;
    private String cname;
    private String xuhao;
    private String jiaoshi;
    private Integer thid;
    private Teacher teacher;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getXuhao() {
        return xuhao;
    }

    public void setXuhao(String xuhao) {
        this.xuhao = xuhao;
    }

    public String getJiaoshi() {
        return jiaoshi;
    }

    public void setJiaoshi(String jiaoshi) {
        this.jiaoshi = jiaoshi;
    }

    public Integer getThid() {
        return thid;
    }

    public void setThid(Integer thid) {
        this.thid = thid;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }
}
