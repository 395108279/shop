package com.my.pojo;

import java.util.Date;

public class Records {
    private int id;
    private String cardId;
    private Date consumeTime;
    private String customName;
    private String tel;
    private int money;
    private String ps;

    public Records(int id, String cardId, Date consumeTime, String customName, String tel, int money, String ps) {
        this.id = id;
        this.cardId = cardId;
        this.consumeTime = consumeTime;
        this.customName = customName;
        this.tel = tel;
        this.money = money;
        this.ps = ps;
    }

    public Records() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCardId() {
        return cardId;
    }

    public void setCardId(String cardId) {
        this.cardId = cardId;
    }

    public Date getConsumeTime() {
        return consumeTime;
    }

    public void setConsumeTime(Date consumeTime) {
        this.consumeTime = consumeTime;
    }

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }
}
