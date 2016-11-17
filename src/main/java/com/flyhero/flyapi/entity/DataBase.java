package com.flyhero.flyapi.entity;

import java.util.Date;

public class DataBase {
    private Integer dbId;

    private String dbUrl;

    private String dbName;

    private String dbRoot;

    private String dbPassword;

    private String dbDriver;

    private Integer updateWay;

    private Integer updateDay;

    private String updateWeek;

    private String updateHour;

    private Date createTime;

    private Date updateTime;

    private Integer isDelete;

    public Integer getDbId() {
        return dbId;
    }

    public void setDbId(Integer dbId) {
        this.dbId = dbId;
    }

    public String getDbUrl() {
        return dbUrl;
    }

    public void setDbUrl(String dbUrl) {
        this.dbUrl = dbUrl == null ? null : dbUrl.trim();
    }

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName == null ? null : dbName.trim();
    }

    public String getDbRoot() {
        return dbRoot;
    }

    public void setDbRoot(String dbRoot) {
        this.dbRoot = dbRoot == null ? null : dbRoot.trim();
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword == null ? null : dbPassword.trim();
    }

    public String getDbDriver() {
        return dbDriver;
    }

    public void setDbDriver(String dbDriver) {
        this.dbDriver = dbDriver == null ? null : dbDriver.trim();
    }

    public Integer getUpdateWay() {
        return updateWay;
    }

    public void setUpdateWay(Integer updateWay) {
        this.updateWay = updateWay;
    }

    public Integer getUpdateDay() {
        return updateDay;
    }

    public void setUpdateDay(Integer updateDay) {
        this.updateDay = updateDay;
    }

    public String getUpdateWeek() {
        return updateWeek;
    }

    public void setUpdateWeek(String updateWeek) {
        this.updateWeek = updateWeek == null ? null : updateWeek.trim();
    }

    public String getUpdateHour() {
        return updateHour;
    }

    public void setUpdateHour(String updateHour) {
        this.updateHour = updateHour == null ? null : updateHour.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }
}