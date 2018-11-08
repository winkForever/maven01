package com.entity;

import java.io.Serializable;

public class Style implements Serializable {
    private Integer styleId;

    private String styleName;

    private String styleRemark;


    private static final long serialVersionUID = 1L;

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public String getStyleName() {
        return styleName;
    }

    public void setStyleName(String styleName) {
        this.styleName = styleName == null ? null : styleName.trim();
    }

    public String getStyleRemark() {
        return styleRemark;
    }

    public void setStyleRemark(String styleRemark) {
        this.styleRemark = styleRemark == null ? null : styleRemark.trim();
    }

}