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
// package org.allbinary.data.tables.user.address

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const StreetAddressesEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.address.StreetAddressesEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    removeFn: *const fn (pointer: *anyopaque, index: ?*Integer) void,
    addFn: *const fn (pointer: *anyopaque, address: ?*StreetAddress) void,
    updateFn: *const fn (pointer: *anyopaque, address: ?*StreetAddress) void,
    getLastIdFn: *const fn (pointer: *anyopaque) ?*String,
    getDefaultFn: *const fn (pointer: *anyopaque) ?*StreetAddress,
    setDefaultFn: *const fn (pointer: *anyopaque, value: ?*String) void,

    pub fn remove(self: *Self, index: ?*Integer) void {
        return self.removeFn(self.pointer, index);
    }

    pub fn add(self: *Self, address: ?*StreetAddress) void {
        return self.addFn(self.pointer, address);
    }

    pub fn update(self: *Self, address: ?*StreetAddress) void {
        return self.updateFn(self.pointer, address);
    }

    pub fn getLastId(self: *Self) ?*String {
        return self.getLastIdFn(self.pointer);
    }

    pub fn getDefault(self: *Self) ?*StreetAddress {
        return self.getDefaultFn(self.pointer);
    }

    pub fn setDefault(self: *Self, value: ?*String) void {
        return self.setDefaultFn(self.pointer, value);
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
            fn remove(pointer: *anyopaque, index: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "remove").remove(index);
            }
            fn add(pointer: *anyopaque, address: ?*StreetAddress) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(address);
            }
            fn update(pointer: *anyopaque, address: ?*StreetAddress) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(address);
            }
            fn getLastId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastId").getLastId());
            }
            fn getDefault(pointer: *anyopaque) ?*StreetAddress {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StreetAddress, Inheritance.receiver(implementation, "getDefault").getDefault());
            }
            fn setDefault(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDefault").setDefault(value);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .removeFn = Methods.remove, .addFn = Methods.add, .updateFn = Methods.update, .getLastIdFn = Methods.getLastId, .getDefaultFn = Methods.getDefault, .setDefaultFn = Methods.setDefault };
        return this;
    }
};

