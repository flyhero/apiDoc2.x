package com.flyhero.flyapi.entity;

public class InterfacesWithBLOBs extends Interfaces {
    private String param;

    private String requestExam;

    private String responseParam;

    private String trueExam;

    private String falseExam;

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param == null ? null : param.trim();
    }

    public String getRequestExam() {
        return requestExam;
    }

    public void setRequestExam(String requestExam) {
        this.requestExam = requestExam == null ? null : requestExam.trim();
    }

    public String getResponseParam() {
        return responseParam;
    }

    public void setResponseParam(String responseParam) {
        this.responseParam = responseParam == null ? null : responseParam.trim();
    }

    public String getTrueExam() {
        return trueExam;
    }

    public void setTrueExam(String trueExam) {
        this.trueExam = trueExam == null ? null : trueExam.trim();
    }

    public String getFalseExam() {
        return falseExam;
    }

    public void setFalseExam(String falseExam) {
        this.falseExam = falseExam == null ? null : falseExam.trim();
    }
}