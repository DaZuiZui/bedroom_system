package com.dazuizui.bedroom_system.domain;

import java.io.Serializable;

/**
 * 状态代码返回信息
 */
public class StatusCodeMessage implements Serializable {
    //身份验证过期
    public static final String AdminAuthenticationExpired   = "身份验证过期";
    //身份验证过期
    public static final String AuthenticationExpired   = "身份验证过期";
    //权限不足
    public static final String InsufficientPermissions = "您的操作权限不足";
    //成功
    public static final String OK = "操作成功";
    //失败
    public static final String Error = "操作失败";
    //数据为null
    public static final String IsNull = "数据为null";
    //密码错误
    public static final String PasswordError = "密码错误";
}
