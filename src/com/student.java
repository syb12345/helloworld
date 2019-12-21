package com;


public class student {
    public String sno;
    public String name;

    public student(String sno1, String name1) {
        this.sno=sno1;
        this.name=name1;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getSno() {
        return sno;
    }
    public String getName(){
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}

