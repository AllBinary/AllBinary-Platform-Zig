//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const AuthenticationHelperFactory = @import("admin/taghelpers/AuthenticationHelperFactory.zig").AuthenticationHelperFactory;
const AuthenticationRequestHelperFactory = @import("admin/taghelpers/AuthenticationRequestHelperFactory.zig").AuthenticationRequestHelperFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AuthenticationTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.AuthenticationTag";
    base: CustomTagSupport = undefined,
    logUtil: ?*LogUtil = null,
    command: ?*String = null,
    userName: ?*String = null,
    password: ?*String = null,
    newPassword: ?*String = null,
    roles: ?*BasicArrayList = null,
    propertiesHashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.command = null;
        
        
        this.newPassword = null;
        this.roles = null;
        this.propertiesHashMap = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.userName = Inheritance.upcast(@TypeOf(this.userName), stringUtil.?.EMPTY_STRING);
        this.password = Inheritance.upcast(@TypeOf(this.password), stringUtil.?.EMPTY_STRING);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn setUserName(self: *Self, userName: ?*String) void {
        self.userName = userName;
    }
    

    pub fn setPassword(self: *Self, value: ?*String) void {
        self.password = value;
    }
    

    pub fn setNewPassword(self: *Self, value: ?*String) void {
        self.newPassword = value;
    }
    

    pub fn setRoles(self: *Self, values: ?*BasicArrayList) void {
        self.roles = values;
    }
    

    // throws LicensingException
    pub fn changePassword(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("changePassword"), null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("changePassword()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn newPassword(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("newPassword"), null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("newPassword()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn invalidateSession(self: *Self) i32 {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("invalidateSession"), null }));
            const resultInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return resultInteger.?.intValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidateSession()"), e });
//             }
//             return TagSupport.SKIP_BODY;
    }
    

    // throws LicensingException
    pub fn isSessionOld(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("isSessionOld"), null }));
            const resultBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return resultBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isSessionOld()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn isRoleValid(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationRequestHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const methodParams: []?*anyopaque = @constCast(&[_]?*anyopaque{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.userName).?.class))), @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.password).?.class))), @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.roles).?.class))) })[0..];
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("isRoleValid"), methodParams }));
            const methodArgs: []?Object = @constCast(&[_]?Object{ self.userName, self.password, self.roles })[0..];
            const resultBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, methodArgs }));
            return resultBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isRoleValid()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn validRole(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("validRole"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return Inheritance.upcast(?*String, result);
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set valid role"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("validRole()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn invalidRole(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("invalidRole"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return Inheritance.upcast(?*String, result);
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set role invalid"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("invalidRole()"), e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn isAuthenticationSessionValid(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const methodParams: []?*anyopaque = @constCast(&[_]?*anyopaque{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.roles).?.class))) })[0..];
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("isAuthenticationSessionValid"), methodParams }));
            const methodArgs: []?Object = @constCast(&[_]?Object{ self.roles })[0..];
            const resultBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, methodArgs }));
            return resultBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isAuthenticationSessionValid()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn processIfNewLogin(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const methodParams: []?*anyopaque = @constCast(&[_]?*anyopaque{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.userName).?.class))), @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.password).?.class))) })[0..];
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("processIfNewLogin"), methodParams }));
            const methodArgs: []?Object = @constCast(&[_]?Object{ self.userName, self.password })[0..];
            const resultBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, methodArgs }));
            return resultBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("processIfNewLogin()"), e });
//             }
//             return false;
    }
    

    // throws LicensingException
    pub fn processInvalidation(self: *Self) bool {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(AuthenticationHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("processInvalidation"), null }));
            const resultBoolean: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return resultBoolean.?.booleanValue();
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("isSetToInvalidate()"), e });
//             }
//             return false;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getRequest").getRequest());
                const stringBuffer: ?*StringMaker = StringMaker.create();
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Request URI: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ request.?.getRequestURI() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            if (self.command != null) {
                self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.NEWPASSWORD }) == 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("New Password"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    if (!self.newPassword()) {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("New Password Request Failed.<p/>") });
                        return EVAL_BODY_INCLUDE;
                    } else {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("New Password Was Sent.<p/>") });
                        return SKIP_BODY;
                    }
                } else if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.CHANGEPASSWORD }) == 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Change Password"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    if (!self.changePassword()) {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Password Change Attempt Failed.<p/>") });
                        return EVAL_BODY_INCLUDE;
                    } else {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Password Changed Successfully.<p/>") });
                        return SKIP_BODY;
                    }
                } else if (Inheritance.call(self.command.?, "compareTo", .{ WeblisketSessionData.INVALIDATESESSION }) == 0) {
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("INVALIDATESESSION"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    return self.invalidateSession();
                } else {
                    if (self.isSessionOld()) {
                        if (self.processInvalidation()) {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing Invalidation"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Please login again.<p>") });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return TagSupport.SKIP_BODY;
                            } else {
                                return TagSupport.EVAL_BODY_INCLUDE;
                            }
                        } else {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Preparing session for invalidation"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return TagSupport.SKIP_BODY;
                            } else {
                                return TagSupport.EVAL_BODY_INCLUDE;
                            }
                        }
                    }
                    if ((self.userName == null or Inheritance.call(self.userName.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) and (self.password == null or Inheritance.call(self.password.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) == 0) and self.roles != null and self.isAuthenticationSessionValid()) {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Authenticated session is valid"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                            return TagSupport.EVAL_BODY_INCLUDE;
                        } else {
                            return TagSupport.SKIP_BODY;
                        }
                    }
                    if (self.userName != null and self.password != null and self.processIfNewLogin()) {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Processing new login."), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (self.isRoleValid()) {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role is valid - Processing new login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.validRole() });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return EVAL_BODY_INCLUDE;
                            } else {
                                return SKIP_BODY;
                            }
                        } else {
                            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Role is not valid - Processing new login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                            }
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.invalidRole() });
                            if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                                return SKIP_BODY;
                            } else {
                                return EVAL_BODY_INCLUDE;
                            }
                        }
                    } else {
                        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Invalid Login"), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                        }
                        if (self.userName != null and Inheritance.call(self.userName.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) != 0 and self.password != null and Inheritance.call(self.password.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) != 0) {
                            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.literal("Sorry your username and/or password is invalid.<p/>") });
                        }
                    }
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAG })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Major authentication error - userName: ") }).?, "append", .{ self.userName }).?, "append", .{ String.literal(" Password: ") }).?, "append", .{ self.password }).?, "append", .{ String.literal(" Command: ") }).?, "append", .{ self.command }))), self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
                    }
                    if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESSBODYIFAUTHENTICATED }) == 0) {
                        return TagSupport.SKIP_BODY;
                    } else {
                        return TagSupport.EVAL_BODY_INCLUDE;
                    }
                }
            }
            return SKIP_BODY;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

