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
// package org.allbinary.data.tables.user.commerce.inventory.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const InventoryEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getItemFn: *const fn (pointer: *anyopaque, id: ?*String) ?*ItemInterface,
    getItemsFn: *const fn (pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList,
    getWeightFn: *const fn (pointer: *anyopaque, id: ?*String) ?*String,
    deleteWhereFn: *const fn (pointer: *anyopaque, key: ?*String, value: ?*String) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,
    updateFn: *const fn (pointer: *anyopaque, updatedValues: ?*HashMap) void,

    pub fn getItem(self: *Self, id: ?*String) ?*ItemInterface {
        return self.getItemFn(self.pointer, id);
    }

    pub fn getItems(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        return self.getItemsFn(self.pointer, storeFrontInterface);
    }

    pub fn getWeight(self: *Self, id: ?*String) ?*String {
        return self.getWeightFn(self.pointer, id);
    }

    pub fn deleteWhere(self: *Self, key: ?*String, value: ?*String) void {
        return self.deleteWhereFn(self.pointer, key, value);
    }

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        return self.insertFn(self.pointer, values);
    }

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        return self.updateFn(self.pointer, updatedValues);
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
            fn getItem(pointer: *anyopaque, id: ?*String) ?*ItemInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ItemInterface, Inheritance.receiver(implementation, "getItem").getItem(id));
            }
            fn getItems(pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getItems").getItems(storeFrontInterface));
            }
            fn getWeight(pointer: *anyopaque, id: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getWeight").getWeight(id));
            }
            fn deleteWhere(pointer: *anyopaque, key: ?*String, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deleteWhere").deleteWhere(key, value);
            }
            fn insert(pointer: *anyopaque, values: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(values);
            }
            fn update(pointer: *anyopaque, updatedValues: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(updatedValues);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getItemFn = Methods.getItem, .getItemsFn = Methods.getItems, .getWeightFn = Methods.getWeight, .deleteWhereFn = Methods.deleteWhere, .insertFn = Methods.insert, .updateFn = Methods.update };
        return this;
    }
};

