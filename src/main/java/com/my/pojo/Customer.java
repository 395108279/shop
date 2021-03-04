package com.my.pojo;

public class Customer {
    private int id;
    private String cardId;
    private String customName;
    private int money;
    private String tel;

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

    public String getCustomName() {
        return customName;
    }

    public void setCustomName(String customName) {
        this.customName = customName;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Customer(int id, String cardId, String customName, int money, String tel) {
        this.id = id;
        this.cardId = cardId;
        this.customName = customName;
        this.money = money;
        this.tel = tel;
    }

    public Customer() {
    }
}
