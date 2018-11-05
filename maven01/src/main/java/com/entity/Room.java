package com.entity;

import java.io.Serializable;

public class Room implements Serializable {
    private Integer roomId;

    private String roomImg;

    private String roomPrice;

    private String roomInfo;

    private String roomAdd;

    private String roomRemark;

    private Integer userId;

    private static final long serialVersionUID = 1L;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomImg() {
        return roomImg;
    }

    public void setRoomImg(String roomImg) {
        this.roomImg = roomImg == null ? null : roomImg.trim();
    }

    public String getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(String roomPrice) {
        this.roomPrice = roomPrice == null ? null : roomPrice.trim();
    }

    public String getRoomInfo() {
        return roomInfo;
    }

    public void setRoomInfo(String roomInfo) {
        this.roomInfo = roomInfo == null ? null : roomInfo.trim();
    }

    public String getRoomAdd() {
        return roomAdd;
    }

    public void setRoomAdd(String roomAdd) {
        this.roomAdd = roomAdd == null ? null : roomAdd.trim();
    }

    public String getRoomRemark() {
        return roomRemark;
    }

    public void setRoomRemark(String roomRemark) {
        this.roomRemark = roomRemark == null ? null : roomRemark.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}