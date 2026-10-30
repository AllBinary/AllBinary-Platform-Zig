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
// package org.allbinary.business.user.commerce.money.payment

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.PaymentInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTypeFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setExpirationFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setNumberFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getIdFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTypeFn: *const fn (pointer: *anyopaque) ?*String,
    getExpirationFn: *const fn (pointer: *anyopaque) ?*String,
    getEncryptionFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberFn: *const fn (pointer: *anyopaque) ?*String,
    getLastFourFn: *const fn (pointer: *anyopaque) ?*String,
    isDefaultFn: *const fn (pointer: *anyopaque) bool,

    pub fn setName(self: *Self, value: ?*String) void {
        return self.setNameFn(self.pointer, value);
    }

    pub fn setType(self: *Self, value: ?*String) void {
        return self.setTypeFn(self.pointer, value);
    }

    pub fn setExpiration(self: *Self, value: ?*String) void {
        return self.setExpirationFn(self.pointer, value);
    }

    pub fn setNumber(self: *Self, value: ?*String) void {
        return self.setNumberFn(self.pointer, value);
    }

    pub fn getId(self: *Self) ?*String {
        return self.getIdFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getType(self: *Self) ?*String {
        return self.getTypeFn(self.pointer);
    }

    pub fn getExpiration(self: *Self) ?*String {
        return self.getExpirationFn(self.pointer);
    }

    pub fn getEncryption(self: *Self) ?*String {
        return self.getEncryptionFn(self.pointer);
    }

    pub fn getNumber(self: *Self) ?*String {
        return self.getNumberFn(self.pointer);
    }

    pub fn getLastFour(self: *Self) ?*String {
        return self.getLastFourFn(self.pointer);
    }

    pub fn isDefault(self: *Self) bool {
        return self.isDefaultFn(self.pointer);
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
            fn setName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(value);
            }
            fn setType(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setType").setType(value);
            }
            fn setExpiration(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setExpiration").setExpiration(value);
            }
            fn setNumber(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setNumber").setNumber(value);
            }
            fn getId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getId").getId());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getType(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getType").getType());
            }
            fn getExpiration(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getExpiration").getExpiration());
            }
            fn getEncryption(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getEncryption").getEncryption());
            }
            fn getNumber(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getNumber").getNumber());
            }
            fn getLastFour(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastFour").getLastFour());
            }
            fn isDefault(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDefault").isDefault();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setNameFn = Methods.setName, .setTypeFn = Methods.setType, .setExpirationFn = Methods.setExpiration, .setNumberFn = Methods.setNumber, .getIdFn = Methods.getId, .getNameFn = Methods.getName, .getTypeFn = Methods.getType, .getExpirationFn = Methods.getExpiration, .getEncryptionFn = Methods.getEncryption, .getNumberFn = Methods.getNumber, .getLastFourFn = Methods.getLastFour, .isDefaultFn = Methods.isDefault };
        return this;
    }
};

