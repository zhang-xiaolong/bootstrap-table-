package com.qf.teacher.model;

import java.util.Date;

/**
 * Created by 初秋 on 2018/10/17.
 */
public class Teacher {

    /**
     *
     t_namevarchar(20) NULL老师姓名
     t_ageint(10) NULL老师年龄
     t_timetime NULL老师入职时间
     t_subjectsvarchar(20) NULL老师执教科目
     t_idint(5) NOT NULL老师编号
     t_remark(200)NULL 备注
     * */
    private  String tremark;
    private  String tname;
    private  Integer tage;
    private  String  ttime;
    private  String  tsubjects;
    private  Integer tid;

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

    public String getTtime() {
        return ttime;
    }

    public void setTtime(String  ttime) {
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
