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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const OrderItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntityFactory.zig").OrderItemsEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const OrderItemsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.OrderItemsRequestHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    request: ?*HttpServletRequest = null,
    id: ?*String = null,
    groupId: ?*String = null,
    status: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.id = null;
        this.groupId = null;
        this.status = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = hashMap;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.id = Inheritance.upcast(@TypeOf(self.id), Inheritance.call(self.request.?, "getParameter", .{ OrderData.ID }));
        self.groupId = Inheritance.upcast(@TypeOf(self.groupId), Inheritance.call(self.request.?, "getParameter", .{ ShippingMethodData.GROUP }));
        self.status = Inheritance.upcast(@TypeOf(self.status), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.STATUS }));
    }
    

    pub fn setOrderStatus1(self: *Self, newStatusParameter: ?*String) ?*String {
        var newStatus = newStatusParameter;
        { // try
            if (newStatus == null) {
                newStatus = self.status;
            }
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Status successfully set to: "), newStatus));
            _ = Inheritance.call(OrderItemsEntityFactory.getInstance().?, "setStatus", .{ self.id, self.groupId, newStatus });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("setOrderStatus(newStatus)") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view order table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setOrderStatus(newStatus)"), e });
//             }
//             return @"error";
    }
    

    pub fn setOrderStatus(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Status successfully set to: "), self.status));
            _ = Inheritance.call(OrderItemsEntityFactory.getInstance().?, "setStatus", .{ self.id, self.groupId, self.status });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("setOrderStatus(newStatus)") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view order table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setOrderStatus(newStatus)"), e });
//             }
//             return @"error";
    }
};

