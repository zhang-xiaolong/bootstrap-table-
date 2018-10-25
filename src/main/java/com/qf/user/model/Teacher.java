package com.qf.user.model;

import java.sql.Date;

public class Teacher {

    private String tremark;
    private String tname;
    private Integer tage;
    private Date ttime;
    private String tsubjects;
    private Integer tid;

    public String getTremark() {
        return tremark;
    }

    public void setTremark(String tremark) {
        this.tremark = tremark;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Integer getTage() {
        return tage;
    }

    public void setTage(Integer tage) {
        this.tage = tage;
    }

    public Date getTtime() {
        return ttime;
    }

    public void setTtime(Date ttime) {
        this.ttime = ttime;
    }

    public String getTsubjects() {
        return tsubjects;
    }

    public void setTsubjects(String tsubjects) {
        this.tsubjects = tsubjects;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }
}
