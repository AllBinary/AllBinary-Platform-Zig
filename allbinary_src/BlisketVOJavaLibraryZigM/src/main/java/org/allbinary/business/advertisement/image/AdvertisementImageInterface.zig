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
// package org.allbinary.business.advertisement.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TwoDimensionalConstraintInterface = @import("org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface.zig").TwoDimensionalConstraintInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvertisementImageInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.image.AdvertisementImageInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFileNameFn: *const fn (pointer: *anyopaque) ?*String,
    getUrlFn: *const fn (pointer: *anyopaque) ?*String,
    getTwoDimensionalConstraintFn: *const fn (pointer: *anyopaque) ?*TwoDimensionalConstraintInterface,

    pub fn getFileName(self: *Self) ?*String {
        return self.getFileNameFn(self.pointer);
    }

    pub fn getUrl(self: *Self) ?*String {
        return self.getUrlFn(self.pointer);
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
            fn getFileName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFileName").getFileName());
            }
            fn getUrl(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUrl").getUrl());
            }
            fn getTwoDimensionalConstraint(pointer: *anyopaque) ?*TwoDimensionalConstraintInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TwoDimensionalConstraintInterface, Inheritance.receiver(implementation, "getTwoDimensionalConstraint").getTwoDimensionalConstraint());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getFileNameFn = Methods.getFileName, .getUrlFn = Methods.getUrl, .getTwoDimensionalConstraintFn = Methods.getTwoDimensionalConstraint };
        return this;
    }
};

