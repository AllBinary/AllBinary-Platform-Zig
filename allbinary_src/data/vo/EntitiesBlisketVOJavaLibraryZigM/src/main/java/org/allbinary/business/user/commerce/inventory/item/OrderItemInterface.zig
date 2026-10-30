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
// package org.allbinary.business.user.commerce.inventory.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const OrderItemInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.OrderItemInterface";
    pointer: *anyopaque,
    object: Object,
    base: ItemInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setGroupFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTaxFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setShippingTypeFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setShippingCostFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setShippingAddressFn: *const fn (pointer: *anyopaque, value: ?*StreetAddress) void,
    setSpecialFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getGroupFn: *const fn (pointer: *anyopaque) ?*String,
    getTaxFn: *const fn (pointer: *anyopaque) ?*String,
    getShippingTypeFn: *const fn (pointer: *anyopaque) ?*String,
    getShippingCostFn: *const fn (pointer: *anyopaque) ?*String,
    getShippingAddressFn: *const fn (pointer: *anyopaque) ?*StreetAddress,
    getSpecialFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn setGroup(self: *Self, value: ?*String) void {
        return self.setGroupFn(self.pointer, value);
    }

    pub fn setTax(self: *Self, value: ?*String) void {
        return self.setTaxFn(self.pointer, value);
    }

    pub fn setShippingType(self: *Self, value: ?*String) void {
        return self.setShippingTypeFn(self.pointer, value);
    }

    pub fn setShippingCost(self: *Self, value: ?*String) void {
        return self.setShippingCostFn(self.pointer, value);
    }

    pub fn setShippingAddress(self: *Self, value: ?*StreetAddress) void {
        return self.setShippingAddressFn(self.pointer, value);
    }

    pub fn setSpecial(self: *Self, value: ?*String) void {
        return self.setSpecialFn(self.pointer, value);
    }

    pub fn getGroup(self: *Self) ?*String {
        return self.getGroupFn(self.pointer);
    }

    pub fn getTax(self: *Self) ?*String {
        return self.getTaxFn(self.pointer);
    }

    pub fn getShippingType(self: *Self) ?*String {
        return self.getShippingTypeFn(self.pointer);
    }

    pub fn getShippingCost(self: *Self) ?*String {
        return self.getShippingCostFn(self.pointer);
    }

    pub fn getShippingAddress(self: *Self) ?*StreetAddress {
        return self.getShippingAddressFn(self.pointer);
    }

    pub fn getSpecial(self: *Self) ?*String {
        return self.getSpecialFn(self.pointer);
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
            fn setGroup(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setGroup").setGroup(value);
            }
            fn setTax(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTax").setTax(value);
            }
            fn setShippingType(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShippingType").setShippingType(value);
            }
            fn setShippingCost(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShippingCost").setShippingCost(value);
            }
            fn setShippingAddress(pointer: *anyopaque, value: ?*StreetAddress) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShippingAddress").setShippingAddress(value);
            }
            fn setSpecial(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial").setSpecial(value);
            }
            fn getGroup(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getGroup").getGroup());
            }
            fn getTax(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTax").getTax());
            }
            fn getShippingType(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getShippingType").getShippingType());
            }
            fn getShippingCost(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getShippingCost").getShippingCost());
            }
            fn getShippingAddress(pointer: *anyopaque) ?*StreetAddress {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StreetAddress, Inheritance.receiver(implementation, "getShippingAddress").getShippingAddress());
            }
            fn getSpecial(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial").getSpecial());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ItemInterface.of(object).?.*, .toStringFn = Methods.toString, .setGroupFn = Methods.setGroup, .setTaxFn = Methods.setTax, .setShippingTypeFn = Methods.setShippingType, .setShippingCostFn = Methods.setShippingCost, .setShippingAddressFn = Methods.setShippingAddress, .setSpecialFn = Methods.setSpecial, .getGroupFn = Methods.getGroup, .getTaxFn = Methods.getTax, .getShippingTypeFn = Methods.getShippingType, .getShippingCostFn = Methods.getShippingCost, .getShippingAddressFn = Methods.getShippingAddress, .getSpecialFn = Methods.getSpecial };
        return this;
    }
};

