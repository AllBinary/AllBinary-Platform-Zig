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
// package taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const OrderData = @import("org/allbinary/business/user/commerce/inventory/order/OrderData.zig").OrderData;
const OrderHistoryData = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryData.zig").OrderHistoryData;
const OrderHistoryFactory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory.zig").OrderHistoryFactory;
const OrderHistoryInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryInterface.zig").OrderHistoryInterface;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const OrderHistoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityFactory.zig").OrderHistoryEntityFactory;
const OrderHistoryEntityInterface = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntityInterface.zig").OrderHistoryEntityInterface;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const OrderHistoryHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.OrderHistoryHelper";
    base: TagHelper = undefined,
    logUtil: ?*LogUtil = null,
    weblisketSession: ?*WeblisketSession = null,
    storeFrontInterface: ?*StoreFrontInterface = null,
    propertiesHashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    request: ?*HttpServletRequest = null,
    streetAddress: ?*StreetAddress = null,
    id: ?*String = null,
    groupId: ?*String = null,
    status: ?*String = null,
    newStatus: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.weblisketSession = null;
        this.storeFrontInterface = null;
        
        
        
        this.streetAddress = null;
        this.id = null;
        this.groupId = null;
        this.status = null;
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        this.propertiesHashMap = propertiesHashMap;
        this.pageContext = pageContext;
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        const storeName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        this.newStatus = Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ OrderHistoryData.STATUS }));
        if (storeName != null) {
            this.storeFrontInterface = Inheritance.upcast(@TypeOf(this.storeFrontInterface), Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ storeName }));
        }
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.id = Inheritance.upcast(@TypeOf(self.id), Inheritance.call(self.request.?, "getParameter", .{ OrderData.ID }));
        self.groupId = Inheritance.upcast(@TypeOf(self.groupId), Inheritance.call(self.request.?, "getParameter", .{ ShippingMethodData.GROUP }));
        if (self.newStatus == null) {
            self.newStatus = Inheritance.upcast(@TypeOf(self.newStatus), Inheritance.call(self.request.?, "getParameter", .{ OrderHistoryData.STATUS }));
        }
    }
    

    pub fn setOrderStatus(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Status successfully set to: "), self.status));
            const orderReviewInterface: ?*OrderHistoryInterface = Inheritance.upcast(?*OrderHistoryInterface, Inheritance.callStatic(OrderHistoryFactory, "getInstance", .{ self.id }));
            const status: ?*String = Inheritance.upcast(?*String, orderReviewInterface.?.getStatus());
            if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.CANCELLED }) == 0) {
                return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), self.id), String.literal(" Already Cancelled<br/>")));
            } else if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.SHIPPED }) == 0) {
                return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), self.id), String.literal(" Already Shipped. You can't cancel a shipped order.<br/>")));
            } else if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.PREPROCESSING }) == 0) {
                return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), self.id), String.literal(" has been cancelled.<br/>")));
            } else if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.PARTIALLYSHIPPED }) == 0) {
                return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), self.id), String.literal(" Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>")));
            } else if (Inheritance.call(status.?, "compareTo", .{ OrderHistoryData.PROCESSING }) == 0) {
                const orderHistoryEntityInterface: ?*OrderHistoryEntityInterface = Inheritance.upcast(?*OrderHistoryEntityInterface, OrderHistoryEntityFactory.getInstance());
                _ = Inheritance.call(orderHistoryEntityInterface.?, "setStatus", .{ self.id, self.newStatus });
                return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Order "), self.id), String.literal(" has been cancelled.<br/>")));
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("setOrderStatus()") });
            }
            return String.literal("Error Setting Order Status");
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to set order status"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setOrderStatus()"), e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(@"error", String.literal("<br/>")), String.literal("Exception: ")), e), String.literal("<br/>")));
    }
};

