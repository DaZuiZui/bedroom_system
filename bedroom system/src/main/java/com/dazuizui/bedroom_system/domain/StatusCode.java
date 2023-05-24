package com.dazuizui.bedroom_system.domain;

public class StatusCode {
    //身份验证过期
    public static final String AuthenticationExpired   = "0x444";
    //权限不足
    public static final String InsufficientPermissions = "0x445";
    //成功
    public static final String OK = "0x200";
    //失败
    public static final String Error = "0x500";
    //数据为null
    public static final String IsNull = "0x501";
    //身份验证过期
    public static final String AdminAuthenticationExpired   = "0x446";
    //密码错误
    public static final String PasswordError = "0x447";
    //已经选择床位
    public static final String AlreadySelectedBed = "0x448";
    //床位已被他人选择
    public static final String HasBeenChosenByOthers = "0x449";

    //未缴费
    public static final String Unpaid = "0x450";
}
