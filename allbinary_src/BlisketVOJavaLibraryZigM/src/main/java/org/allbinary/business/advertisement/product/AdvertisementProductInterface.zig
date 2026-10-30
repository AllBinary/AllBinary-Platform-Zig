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
// package org.allbinary.business.advertisement.product

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementProductInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.product.AdvertisementProductInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTypeFn: *const fn (pointer: *anyopaque) ?*String,
    getLinkFn: *const fn (pointer: *anyopaque) ?*String,
    getNumberFn: *const fn (pointer: *anyopaque) i32,
    getTwoDimensionalConstraintFn: *const fn (pointer: *anyopaque) ?*TwoDimensionalConstraintInterface,

    pub fn getType(self: *Self) ?*String {
        return self.getTypeFn(self.pointer);
    }

    pub fn getLink(self: *Self) ?*String {
        return self.getLinkFn(self.pointer);
    }

    pub fn getNumber(self: *Self) i32 {
        return self.getNumberFn(self.pointer);
    }

    pub fn getTwoDimensionalConstraint(self: *Self) ?*TwoDimensionalConstraintInterface {
        return self.getTwoDimensionalConstraintFn(self.pointer);
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
            fn getType(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getType").getType());
            }
            fn getLink(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLink").getLink());
            }
            fn getNumber(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getNumber").getNumber();
            }
            fn getTwoDimensionalConstraint(pointer: *anyopaque) ?*TwoDimensionalConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TwoDimensionalConstraintInterface, Inheritance.receiver(implementation, "getTwoDimensionalConstraint").getTwoDimensionalConstraint());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getTypeFn = Methods.getType, .getLinkFn = Methods.getLink, .getNumberFn = Methods.getNumber, .getTwoDimensionalConstraintFn = Methods.getTwoDimensionalConstraint };
        return this;
    }
};

