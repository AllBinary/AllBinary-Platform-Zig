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
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const OrderHelperFactory = @import("admin/taghelpers/OrderHelperFactory.zig").OrderHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const OrderTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.OrderTag";
    base: CustomTagSupport = undefined,
    logUtil: ?*LogUtil = null,
    command: ?*String = null,
    storeName: ?*String = null,
    propertiesHashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.command = null;
        this.storeName = null;
        this.propertiesHashMap = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    // throws LicensingException
    pub fn process(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(OrderHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return result;
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to Process Order: "); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
//             return @"error";
    }
    

    // throws LicensingException
    pub fn setPaymentGateway(self: *Self) ?*Boolean {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(OrderHelperFactory.create(), "getInstance", .{ self.propertiesHashMap, Inheritance.fieldPointer(self, "pageContext").* }));
            const addressHelperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(addressHelperClass.?, "getMethod", .{ String.literal("setPaymentGateway"), null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ anyType, null }));
            return Inheritance.upcast(?*Boolean, result);
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to setPaymentGateway for Order"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setPaymentGateway()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (self.command != null) {
                self.propertiesHashMap = Inheritance.upcast(@TypeOf(self.propertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
                _ = Inheritance.call(self.propertiesHashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                if (Inheritance.call(self.command.?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.PROCESS }) == 0) {
                    _ = self.process();
                } else if (Inheritance.call(self.command.?, "compareTo", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }) == 0) {
                    if (Object.same(self.setPaymentGateway(), Boolean.TRUE)) {
                        return TagSupport.EVAL_BODY_INCLUDE;
                    }
                }
            }
            return TagSupport.SKIP_BODY;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

