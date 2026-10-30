// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot 
//   
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogConfigType = @import("org/allbinary/logic/communication/log/config/type/LogConfigType.zig").LogConfigType;

pub const LogConfigTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory";
    NO_DESCRIPTION: ?*String = null,
    AUTHENTICATION: ?*LogConfigType = null,
    AUTHENTICATIONERROR: ?*LogConfigType = null,
    CATEGORY: ?*LogConfigType = null,
    CATEGORYERROR: ?*LogConfigType = null,
    CRYPT: ?*LogConfigType = null,
    CRYPTERROR: ?*LogConfigType = null,
    EMAILLOGGING: ?*LogConfigType = null,
    EMAILLOGGINGERROR: ?*LogConfigType = null,
    ENTITYFACTORYERROR: ?*LogConfigType = null,
    NETBEANS_MODULE: ?*LogConfigType = null,
    NETBEANS_MODULE_ERROR: ?*LogConfigType = null,
    FACTORYERROR: ?*LogConfigType = null,
    FILE: ?*LogConfigType = null,
    FILEERROR: ?*LogConfigType = null,
    HTTP: ?*LogConfigType = null,
    HTTPERROR: ?*LogConfigType = null,
    HTTPREQUEST: ?*LogConfigType = null,
    HTTPREQUESTERROR: ?*LogConfigType = null,
    IDLOGGING: ?*LogConfigType = null,
    JSPEXTRAOUTPUT: ?*LogConfigType = null,
    JSPTAGEXTRAOUTPUT: ?*LogConfigType = null,
    JSPTAG: ?*LogConfigType = null,
    JSPTAGERROR: ?*LogConfigType = null,
    LICENSING: ?*LogConfigType = null,
    LICENSINGERROR: ?*LogConfigType = null,
    LOADER: ?*LogConfigType = null,
    LOADERERROR: ?*LogConfigType = null,
    OS: ?*LogConfigType = null,
    OSERROR: ?*LogConfigType = null,
    PAYMENT: ?*LogConfigType = null,
    PAYMENTERROR: ?*LogConfigType = null,
    PRELOADER: ?*LogConfigType = null,
    PRELOADERERROR: ?*LogConfigType = null,
    PRODUCTSEARCHLOGGING: ?*LogConfigType = null,
    PRODUCTSEARCHLOGGINGERROR: ?*LogConfigType = null,
    SERVLET: ?*LogConfigType = null,
    SERVLETERROR: ?*LogConfigType = null,
    SHIPPINGERROR: ?*LogConfigType = null,
    SQLLOGGINGERROR: ?*LogConfigType = null,
    SQLLOGGING: ?*LogConfigType = null,
    SQLTAGS: ?*LogConfigType = null,
    SQLTAGSERROR: ?*LogConfigType = null,
    STYLE: ?*LogConfigType = null,
    STYLEERROR: ?*LogConfigType = null,
    TAGHELPER: ?*LogConfigType = null,
    TAGHELPERERROR: ?*LogConfigType = null,
    TAGHELPERFACTORY: ?*LogConfigType = null,
    TAGHELPERFACTORYERROR: ?*LogConfigType = null,
    TAX: ?*LogConfigType = null,
    TAXERROR: ?*LogConfigType = null,
    VALIDATION: ?*LogConfigType = null,
    VALIDATIONERROR: ?*LogConfigType = null,
    VIEW: ?*LogConfigType = null,
    VIEWERROR: ?*LogConfigType = null,
    VIEWFACTORYERROR: ?*LogConfigType = null,
    WORKFLOW: ?*LogConfigType = null,
    WORKFLOWERROR: ?*LogConfigType = null,
    XMLLOGGING: ?*LogConfigType = null,
    XMLLOGGINGERROR: ?*LogConfigType = null,
    XSLLOGGING: ?*LogConfigType = null,
    XSLLOGGINGERROR: ?*LogConfigType = null,
    REPLACE: ?*LogConfigType = null,
    REPLACE_INFO: ?*LogConfigType = null,
    REPLACEERROR: ?*LogConfigType = null,
    SQLLOGGINGPOOL: ?*LogConfigType = null,
    SQLLOGGINGPOOLERROR: ?*LogConfigType = null,
    STATICPAGEGENERATIONLOGGING: ?*LogConfigType = null,
    STATICPAGEGENERATIONLOGGINGERROR: ?*LogConfigType = null,
    var instance: ?*LogConfigTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogConfigTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NO_DESCRIPTION = String.literal("No Description");
        this.AUTHENTICATION = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Authentication"), this.NO_DESCRIPTION });
        this.AUTHENTICATIONERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Authentication Error"), this.NO_DESCRIPTION });
        this.CATEGORY = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Category"), this.NO_DESCRIPTION });
        this.CATEGORYERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Category Error"), this.NO_DESCRIPTION });
        this.CRYPT = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Crypt"), this.NO_DESCRIPTION });
        this.CRYPTERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Crypt Error"), this.NO_DESCRIPTION });
        this.EMAILLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Email"), this.NO_DESCRIPTION });
        this.EMAILLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Email Error"), this.NO_DESCRIPTION });
        this.ENTITYFACTORYERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Entity Factory Error"), this.NO_DESCRIPTION });
        this.NETBEANS_MODULE = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("NetBeans Module"), this.NO_DESCRIPTION });
        this.NETBEANS_MODULE_ERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("NetBeans Module Error"), this.NO_DESCRIPTION });
        this.FACTORYERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("General Factory Error"), this.NO_DESCRIPTION });
        this.FILE = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("File"), this.NO_DESCRIPTION });
        this.FILEERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("File Error"), this.NO_DESCRIPTION });
        this.HTTP = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("HTTP"), this.NO_DESCRIPTION });
        this.HTTPERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("HTTP Error"), this.NO_DESCRIPTION });
        this.HTTPREQUEST = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Http Request"), this.NO_DESCRIPTION });
        this.HTTPREQUESTERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Http Request Error"), this.NO_DESCRIPTION });
        this.IDLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("ID Logging"), this.NO_DESCRIPTION });
        this.JSPEXTRAOUTPUT = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("JSP Extra Output"), this.NO_DESCRIPTION });
        this.JSPTAGEXTRAOUTPUT = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("JSP Tag Extra Output"), this.NO_DESCRIPTION });
        this.JSPTAG = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("JSP Tag"), this.NO_DESCRIPTION });
        this.JSPTAGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("JSP Tag Error"), this.NO_DESCRIPTION });
        this.LICENSING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Licensing"), this.NO_DESCRIPTION });
        this.LICENSINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Licensing Error"), this.NO_DESCRIPTION });
        this.LOADER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Loader"), this.NO_DESCRIPTION });
        this.LOADERERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Loader Error"), this.NO_DESCRIPTION });
        this.OS = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("OS"), this.NO_DESCRIPTION });
        this.OSERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("OS Error"), this.NO_DESCRIPTION });
        this.PAYMENT = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Payment"), this.NO_DESCRIPTION });
        this.PAYMENTERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Payment Error"), this.NO_DESCRIPTION });
        this.PRELOADER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("PreLoader"), this.NO_DESCRIPTION });
        this.PRELOADERERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("PreLoader Error"), this.NO_DESCRIPTION });
        this.PRODUCTSEARCHLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Product Search Logging"), this.NO_DESCRIPTION });
        this.PRODUCTSEARCHLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Product Search Logging Error"), this.NO_DESCRIPTION });
        this.SERVLET = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Servlet"), this.NO_DESCRIPTION });
        this.SERVLETERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Servlet Error"), this.NO_DESCRIPTION });
        this.SHIPPINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Shipping Error"), this.NO_DESCRIPTION });
        this.SQLLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Error"), this.NO_DESCRIPTION });
        this.SQLLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Logging"), this.NO_DESCRIPTION });
        this.SQLTAGS = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Tag Logging"), this.NO_DESCRIPTION });
        this.SQLTAGSERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Tag Error"), this.NO_DESCRIPTION });
        this.STYLE = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Style"), this.NO_DESCRIPTION });
        this.STYLEERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Style Error"), this.NO_DESCRIPTION });
        this.TAGHELPER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tag Helper"), this.NO_DESCRIPTION });
        this.TAGHELPERERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tag Helper Error"), this.NO_DESCRIPTION });
        this.TAGHELPERFACTORY = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tag Helper Factory"), this.NO_DESCRIPTION });
        this.TAGHELPERFACTORYERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tag Helper Factory Error"), this.NO_DESCRIPTION });
        this.TAX = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tax"), this.NO_DESCRIPTION });
        this.TAXERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Tax Error"), this.NO_DESCRIPTION });
        this.VALIDATION = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Validation"), this.NO_DESCRIPTION });
        this.VALIDATIONERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Validation Error"), this.NO_DESCRIPTION });
        this.VIEW = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("View"), this.NO_DESCRIPTION });
        this.VIEWERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("View Error"), this.NO_DESCRIPTION });
        this.VIEWFACTORYERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("View Factory Error"), this.NO_DESCRIPTION });
        this.WORKFLOW = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Workflow"), this.NO_DESCRIPTION });
        this.WORKFLOWERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Workflow Error"), this.NO_DESCRIPTION });
        this.XMLLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("XML Logging"), this.NO_DESCRIPTION });
        this.XMLLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("XML Logging Error"), this.NO_DESCRIPTION });
        this.XSLLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("XSL Logging"), this.NO_DESCRIPTION });
        this.XSLLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("XSL Logging Error"), this.NO_DESCRIPTION });
        this.REPLACE = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Replace"), this.NO_DESCRIPTION });
        this.REPLACE_INFO = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Replace Info"), this.NO_DESCRIPTION });
        this.REPLACEERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Replace Error"), this.NO_DESCRIPTION });
        this.SQLLOGGINGPOOL = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Pool"), this.NO_DESCRIPTION });
        this.SQLLOGGINGPOOLERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("SQL Pool Error"), this.NO_DESCRIPTION });
        this.STATICPAGEGENERATIONLOGGING = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Static Page Generation Logging"), this.NO_DESCRIPTION });
        this.STATICPAGEGENERATIONLOGGINGERROR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Static Page Generation Logging Error"), this.NO_DESCRIPTION });
    }
    

    pub fn getInstance() ?*LogConfigTypeFactory {
        return Inheritance.upcast(?*LogConfigTypeFactory, LogConfigTypeFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("FreeBlisket"), this, CommonStrings.getInstance().?.CONSTRUCTOR });
        return this;
    }
};

