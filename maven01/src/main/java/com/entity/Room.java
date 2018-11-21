package com.entity;

import java.io.Serializable;

import javax.persistence.Column;

public class Room implements Serializable {
    private Integer roomId;

    private String roomImg;

    private String roomPrice;

    private String roomInfo;

    private String roomAdd;

    private String roomRemark;

    private Integer user;

    private Integer area;    
    
    private Integer style;

    private Style style2;   

    private Boolean roomState;

    private Boolean roomFlag;

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

    public Integer getUser() {
        return user;
    }

	public void setUser(Integer user) {
        this.user = user;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }           

	public Integer getStyle() {
        return style;
    }

	public void setStyle(Integer style) {
		this.style = style;
	}

	public Style getStyle2() {
        return style2;
    }

    public void setStyle2(Style style2) {
        this.style2 = style2;
    }

    public Boolean getRoomState() {
        return roomState;
    }

    public void setRoomState(Boolean roomState) {
        this.roomState = roomState;
    }

    public Boolean getRoomFlag() {
        return roomFlag;
    }

    public void setRoomFlag(Boolean roomFlag) {
        this.roomFlag = roomFlag;
    }
    
}