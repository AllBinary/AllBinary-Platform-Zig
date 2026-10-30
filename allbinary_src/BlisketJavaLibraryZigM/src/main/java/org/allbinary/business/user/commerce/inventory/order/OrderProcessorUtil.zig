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
// package org.allbinary.business.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderIdGenerator = @import("org/allbinary/data/generator/OrderIdGenerator.zig").OrderIdGenerator;
const OrderHistoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderHistoryEntity.zig").OrderHistoryEntity;
const OrderItemsEntity = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity.zig").OrderItemsEntity;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;

pub const OrderProcessorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil";
    ORDER_PROCESSED: ?*String = null,
    var instance: ?*OrderProcessorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OrderProcessorUtil.create();
    }

    fn initFields(this: *Self) void {
        this.ORDER_PROCESSED = String.literal("Order Processed");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*OrderProcessorUtil {
        return Inheritance.upcast(?*OrderProcessorUtil, OrderProcessorUtil.instance);
    }
    

    // throws Exception
    pub fn process(self: *Self, userName: ?*String, order: ?*Order) ?*String {
        const orderItems: ?*OrderItemsEntity = OrderItemsEntity.create();
        const orderHistory: ?*OrderHistoryEntity = OrderHistoryEntity.create();
        _ = Inheritance.call(order.?, "setId", .{ Inheritance.receiver(OrderIdGenerator.create(), "getNext").getNext() });
        _ = Inheritance.call(orderItems.?, "insert", .{ userName, order });
        _ = Inheritance.call(orderHistory.?, "insert", .{ userName, order });
        return self.ORDER_PROCESSED;
    }
};

