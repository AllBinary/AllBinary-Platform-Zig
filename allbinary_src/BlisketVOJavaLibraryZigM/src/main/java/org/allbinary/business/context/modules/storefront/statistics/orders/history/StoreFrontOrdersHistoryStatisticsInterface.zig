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
// package org.allbinary.business.context.modules.storefront.statistics.orders.history

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const Long = @import("java/lang/Long.zig").Long;

// Java interface: an implementation is a pointer and a table of functions
pub const StoreFrontOrdersHistoryStatisticsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberOfOrdersFn: *const fn (pointer: *anyopaque) ?*Long,
    getSubTotalFn: *const fn (pointer: *anyopaque) ?*Money,
    getShippingCostFn: *const fn (pointer: *anyopaque) ?*Money,
    getTaxesFn: *const fn (pointer: *anyopaque) ?*Money,
    getTotalFn: *const fn (pointer: *anyopaque) ?*Money,

    pub fn getNumberOfOrders(self: *Self) ?*Long {
        return self.getNumberOfOrdersFn(self.pointer);
    }

    pub fn getSubTotal(self: *Self) ?*Money {
        return self.getSubTotalFn(self.pointer);
    }

    pub fn getShippingCost(self: *Self) ?*Money {
        return self.getShippingCostFn(self.pointer);
    }

    pub fn getTaxes(self: *Self) ?*Money {
        return self.getTaxesFn(self.pointer);
    }

    pub fn getTotal(self: *Self) ?*Money {
        return self.getTotalFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getNumberOfOrders(pointer: *anyopaque) ?*Long {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Long, Inheritance.receiver(implementation, "getNumberOfOrders").getNumberOfOrders());
            }
            fn getSubTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getSubTotal").getSubTotal());
            }
            fn getShippingCost(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getShippingCost").getShippingCost());
            }
            fn getTaxes(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getTaxes").getTaxes());
            }
            fn getTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getTotal").getTotal());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .getNumberOfOrdersFn = Methods.getNumberOfOrders, .getSubTotalFn = Methods.getSubTotal, .getShippingCostFn = Methods.getShippingCost, .getTaxesFn = Methods.getTaxes, .getTotalFn = Methods.getTotal };
        return this;
    }
};

