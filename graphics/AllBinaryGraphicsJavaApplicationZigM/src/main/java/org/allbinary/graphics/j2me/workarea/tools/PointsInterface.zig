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
// package org.allbinary.graphics.j2me.workarea.tools

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

// Java interface: an implementation is a pointer and a table of functions
pub const PointsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.PointsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getPointsFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    addPointsFn: *const fn (pointer: *anyopaque, vector: ?*BasicArrayList) void,

    pub fn getPoints(self: *Self) ?*BasicArrayList {
        return self.getPointsFn(self.pointer);
    }

    pub fn addPoints(self: *Self, vector: ?*BasicArrayList) void {
        return self.addPointsFn(self.pointer, vector);
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
            fn getPoints(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getPoints").getPoints());
            }
            fn addPoints(pointer: *anyopaque, vector: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addPoints").addPoints(vector);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getPointsFn = Methods.getPoints, .addPointsFn = Methods.addPoints };
        return this;
    }
};

