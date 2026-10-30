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
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const ShippingHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.ShippingHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    request: ?*HttpServletRequest = null,
    shippingType: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.storeFrontInterface = null;
        this.propertiesHashMap = null;
        
        
        this.shippingType = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.pageContext = pageContext;
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        }
        this.weblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.shippingType = Inheritance.upcast(@TypeOf(self.shippingType), Inheritance.call(self.request.?, "getParameter", .{ ShippingMethodData.NAME }));
    }
    

    pub fn setShippingType(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Successfully Set Shipping Type");
            const order: ?*OrderInterface = Inheritance.upcast(?*OrderInterface, self.weblisketSession.?.getOrder());
            _ = Inheritance.call(order.?, "setShippingMethod", .{ self.shippingType });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("setShippingType()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to view Shipping Type"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setShippingType()"), e });
//             }
//             return @"error";
    }
};

