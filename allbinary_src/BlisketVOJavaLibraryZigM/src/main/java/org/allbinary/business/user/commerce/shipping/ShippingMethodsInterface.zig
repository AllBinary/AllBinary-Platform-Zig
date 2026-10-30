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
// package org.allbinary.business.user.commerce.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ShippingMethodsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getShippingInterfaceFn: *const fn (pointer: *anyopaque, name: ?*String) ?*ShippingInterface,
    getDefaultFn: *const fn (pointer: *anyopaque) ?*ShippingInterface,

    pub fn get(self: *Self) ?*BasicArrayList {
        return self.getFn(self.pointer);
    }

    pub fn getShippingInterface(self: *Self, name: ?*String) ?*ShippingInterface {
        return self.getShippingInterfaceFn(self.pointer, name);
    }

    pub fn getDefault(self: *Self) ?*ShippingInterface {
        return self.getDefaultFn(self.pointer);
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
            fn get(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "get").get());
            }
            fn getShippingInterface(pointer: *anyopaque, name: ?*String) ?*ShippingInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ShippingInterface, Inheritance.receiver(implementation, "getShippingInterface").getShippingInterface(name));
            }
            fn getDefault(pointer: *anyopaque) ?*ShippingInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ShippingInterface, Inheritance.receiver(implementation, "getDefault").getDefault());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getFn = Methods.get, .getShippingInterfaceFn = Methods.getShippingInterface, .getDefaultFn = Methods.getDefault };
        return this;
    }
};

