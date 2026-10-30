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
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const PaymentProcessHelperFactory = @import("admin/taghelpers/PaymentProcessHelperFactory.zig").PaymentProcessHelperFactory;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const PaymentProcessTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.PaymentProcessTag";
    base: StoreValidationTransformTag = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = StoreValidationTransformTag.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws LicensingException, Exception
    pub fn process(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(PaymentProcessHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.LICENSINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("LicensingException"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.JSPTAGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.AUTHORIZEORDEREVALBODYONERROR }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.AUTHORIZEORDERANDEVALBODY }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.AUTHORIZEFORMEVALBODYONERROR }) == 0) {
                _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ String.plus(self.process(), String.literal("<br />")) });
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.AUTHORIZEORDEREVALBODYONERROR }) == 0) {
                    return Inheritance.fieldPointer(self, "SKIP_BODY").*;
                } else {
                    return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                }
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("No Such Payment Processing Command"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

