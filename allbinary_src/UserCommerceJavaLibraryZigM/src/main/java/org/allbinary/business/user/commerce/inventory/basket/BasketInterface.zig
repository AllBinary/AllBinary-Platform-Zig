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
// package org.allbinary.business.user.commerce.inventory.basket

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const BasketInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.basket.BasketInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addItemFn: *const fn (pointer: *anyopaque, id: ?*String, num: ?*String) void,
    removeItemFn: *const fn (pointer: *anyopaque, id: ?*String) void,
    adjustItemFn: *const fn (pointer: *anyopaque, id: ?*String, num: ?*String) void,
    getTotalWeightFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberOfItemsFn: *const fn (pointer: *anyopaque) ?*Integer,
    getIdsFn: *const fn (pointer: *anyopaque) ?*Set,
    getItemsFn: *const fn (pointer: *anyopaque) ?*HashMap,
    getNumberOfFn: *const fn (pointer: *anyopaque, product: ?*String) ?*Integer,
    getSubTotalFn: *const fn (pointer: *anyopaque) ?*Money,

    pub fn addItem(self: *Self, id: ?*String, num: ?*String) void {
        return self.addItemFn(self.pointer, id, num);
    }

    pub fn removeItem(self: *Self, id: ?*String) void {
        return self.removeItemFn(self.pointer, id);
    }

    pub fn adjustItem(self: *Self, id: ?*String, num: ?*String) void {
        return self.adjustItemFn(self.pointer, id, num);
    }

    pub fn getTotalWeight(self: *Self) ?*String {
        return self.getTotalWeightFn(self.pointer);
    }

    pub fn getNumberOfItems(self: *Self) ?*Integer {
        return self.getNumberOfItemsFn(self.pointer);
    }

    pub fn getIds(self: *Self) ?*Set {
        return self.getIdsFn(self.pointer);
    }

    pub fn getItems(self: *Self) ?*HashMap {
        return self.getItemsFn(self.pointer);
    }

    pub fn getNumberOf(self: *Self, product: ?*String) ?*Integer {
        return self.getNumberOfFn(self.pointer, product);
    }

    pub fn getSubTotal(self: *Self) ?*Money {
        return self.getSubTotalFn(self.pointer);
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
            fn addItem(pointer: *anyopaque, id: ?*String, num: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addItem").addItem(id, num);
            }
            fn removeItem(pointer: *anyopaque, id: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeItem").removeItem(id);
            }
            fn adjustItem(pointer: *anyopaque, id: ?*String, num: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "adjustItem").adjustItem(id, num);
            }
            fn getTotalWeight(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTotalWeight").getTotalWeight());
            }
            fn getNumberOfItems(pointer: *anyopaque) ?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Integer, Inheritance.receiver(implementation, "getNumberOfItems").getNumberOfItems());
            }
            fn getIds(pointer: *anyopaque) ?*Set {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Set, Inheritance.receiver(implementation, "getIds").getIds());
            }
            fn getItems(pointer: *anyopaque) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "getItems").getItems());
            }
            fn getNumberOf(pointer: *anyopaque, product: ?*String) ?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Integer, Inheritance.receiver(implementation, "getNumberOf").getNumberOf(product));
            }
            fn getSubTotal(pointer: *anyopaque) ?*Money {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Money, Inheritance.receiver(implementation, "getSubTotal").getSubTotal());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addItemFn = Methods.addItem, .removeItemFn = Methods.removeItem, .adjustItemFn = Methods.adjustItem, .getTotalWeightFn = Methods.getTotalWeight, .getNumberOfItemsFn = Methods.getNumberOfItems, .getIdsFn = Methods.getIds, .getItemsFn = Methods.getItems, .getNumberOfFn = Methods.getNumberOf, .getSubTotalFn = Methods.getSubTotal };
        return this;
    }
};

