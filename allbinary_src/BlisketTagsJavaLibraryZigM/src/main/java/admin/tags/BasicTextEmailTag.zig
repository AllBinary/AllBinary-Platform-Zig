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
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const BasicTextEmailHelperFactory = @import("admin/taghelpers/BasicTextEmailHelperFactory.zig").BasicTextEmailHelperFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;

pub const BasicTextEmailTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.BasicTextEmailTag";
    base: CustomTagSupport = undefined,
    logUtil: ?*LogUtil = null,
    subject: ?*String = null,
    body: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.subject = null;
        this.body = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setSubject(self: *Self, value: ?*String) void {
        self.subject = value;
    }
    

    pub fn setBody(self: *Self, value: ?*String) void {
        self.body = value;
    }
    

    pub fn send(self: *Self) ?*String {
        { // try
            const propertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(propertiesHashMap.?, "put", .{ String.literal("Subject"), self.subject });
            _ = Inheritance.call(propertiesHashMap.?, "put", .{ String.literal("Body"), self.body });
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(BasicTextEmailHelperFactory.create(), "getInstance", .{ propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getMethod", .{ String.literal("send"), null }));
            _ = Inheritance.call(method.?, "invoke", .{ anyType, null });
            return String.literal("Email Sent");
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to Send Email."); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("send()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.send() });
            return SKIP_BODY;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

