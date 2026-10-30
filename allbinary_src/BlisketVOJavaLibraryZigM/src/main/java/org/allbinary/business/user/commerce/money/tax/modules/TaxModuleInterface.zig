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
// package org.allbinary.business.user.commerce.money.tax.modules

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const Float = @import("java/lang/Float.zig").Float;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

// Java interface: an implementation is a pointer and a table of functions
pub const TaxModuleInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTaxRateFn: *const fn (pointer: *anyopaque, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Float,
    isValidFn: *const fn (pointer: *anyopaque, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Boolean,

    pub fn getTaxRate(self: *Self, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Float {
        return self.getTaxRateFn(self.pointer, streetAddress, storeFrontInterface);
    }

    pub fn isValid(self: *Self, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Boolean {
        return self.isValidFn(self.pointer, streetAddress, storeFrontInterface);
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
            fn getTaxRate(pointer: *anyopaque, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Float {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Float, Inheritance.receiver(implementation, "getTaxRate").getTaxRate(streetAddress, storeFrontInterface));
            }
            fn isValid(pointer: *anyopaque, streetAddress: ?*StreetAddress, storeFrontInterface: ?*StoreFrontInterface) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isValid").isValid(streetAddress, storeFrontInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getTaxRateFn = Methods.getTaxRate, .isValidFn = Methods.isValid };
        return this;
    }
};

