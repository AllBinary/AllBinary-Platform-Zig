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
// package org.allbinary.data.tables.user.commerce.money.payment

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PaymentInterface = @import("org/allbinary/business/user/commerce/money/payment/PaymentInterface.zig").PaymentInterface;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLastIdFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*String,
    setDefaultFn: *const fn (pointer: *anyopaque, userName: ?*String, index: ?*Integer) void,
    getDefaultFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*PaymentInterface,
    getFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*BasicArrayList,
    addFn: *const fn (pointer: *anyopaque, userName: ?*String, paymentInterface: ?*PaymentInterface) void,
    removeFn: *const fn (pointer: *anyopaque, userName: ?*String, index: ?*Integer) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,

    pub fn getLastId(self: *Self, userName: ?*String) ?*String {
        return self.getLastIdFn(self.pointer, userName);
    }

    pub fn setDefault(self: *Self, userName: ?*String, index: ?*Integer) void {
        return self.setDefaultFn(self.pointer, userName, index);
    }

    pub fn getDefault(self: *Self, userName: ?*String) ?*PaymentInterface {
        return self.getDefaultFn(self.pointer, userName);
    }

    pub fn get(self: *Self, userName: ?*String) ?*BasicArrayList {
        return self.getFn(self.pointer, userName);
    }

    pub fn add(self: *Self, userName: ?*String, paymentInterface: ?*PaymentInterface) void {
        return self.addFn(self.pointer, userName, paymentInterface);
    }

    pub fn remove(self: *Self, userName: ?*String, index: ?*Integer) void {
        return self.removeFn(self.pointer, userName, index);
    }

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        return self.insertFn(self.pointer, values);
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
            fn getLastId(pointer: *anyopaque, userName: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastId").getLastId(userName));
            }
            fn setDefault(pointer: *anyopaque, userName: ?*String, index: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDefault").setDefault(userName, index);
            }
            fn getDefault(pointer: *anyopaque, userName: ?*String) ?*PaymentInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PaymentInterface, Inheritance.receiver(implementation, "getDefault").getDefault(userName));
            }
            fn get(pointer: *anyopaque, userName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "get").get(userName));
            }
            fn add(pointer: *anyopaque, userName: ?*String, paymentInterface: ?*PaymentInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(userName, paymentInterface);
            }
            fn remove(pointer: *anyopaque, userName: ?*String, index: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "remove").remove(userName, index);
            }
            fn insert(pointer: *anyopaque, values: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(values);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getLastIdFn = Methods.getLastId, .setDefaultFn = Methods.setDefault, .getDefaultFn = Methods.getDefault, .getFn = Methods.get, .addFn = Methods.add, .removeFn = Methods.remove, .insertFn = Methods.insert };
        return this;
    }
};

