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
const OrderItemsHelperFactory = @import("admin/taghelpers/OrderItemsHelperFactory.zig").OrderItemsHelperFactory;
const OrderItemsRequestHelperFactory = @import("admin/taghelpers/OrderItemsRequestHelperFactory.zig").OrderItemsRequestHelperFactory;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const OrderItemsTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.OrderItemsTag";
    base: TableTag = undefined,
    logUtil: ?*LogUtil = null,
    status: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.status = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ OrderItemsHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ OrderItemsRequestHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setStatus(self: *Self, value: ?*String) void {
        self.status = value;
    }
    

    // throws LicensingException
    pub fn setOrderStatus(self: *Self) ?*String {
        { // try
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(OrderItemsRequestHelperFactory.create(), "getInstance", .{ Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.fieldPointer(self, "pageContext").* }));
            if (self.status == null) {
                const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
                const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("setOrderStatus"), null }));
                const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, null }));
                return result;
            } else {
                const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
                const methodParams: []?*anyopaque = @constCast(&[_]?*anyopaque{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.status).?.class))) })[0..];
                const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("setOrderStatus"), methodParams }));
                const methodArgs: []?Object = @constCast(&[_]?Object{ self.status })[0..];
                const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ anyType, methodArgs }));
                return result;
            }
        }
        // catch (LicensingException e):
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Failed to set Order status to: "), self.status)); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setOrderStatus()"), e });
//             }
//             return @"error";
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ OrderHistoryData.STATUS, self.status });
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ OrderHistoryData.SETSTATUS }) == 0) {
                        _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pageContext").*.?, "getOut").getOut().?, "print", .{ self.setOrderStatus() });
                    } else {
                        return self.base.doStartTag();
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

