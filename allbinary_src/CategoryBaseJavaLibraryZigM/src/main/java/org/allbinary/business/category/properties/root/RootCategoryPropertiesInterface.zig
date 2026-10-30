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
// package org.allbinary.business.category.properties.root

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

// Java interface: an implementation is a pointer and a table of functions
pub const RootCategoryPropertiesInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.root.RootCategoryPropertiesInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setRootFilePathFn: *const fn (pointer: *anyopaque, value: ?*AbPath) void,
    getRootFilePathFn: *const fn (pointer: *anyopaque) ?*AbPath,

    pub fn setRootFilePath(self: *Self, value: ?*AbPath) void {
        return self.setRootFilePathFn(self.pointer, value);
    }

    pub fn getRootFilePath(self: *Self) ?*AbPath {
        return self.getRootFilePathFn(self.pointer);
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
            fn setRootFilePath(pointer: *anyopaque, value: ?*AbPath) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRootFilePath").setRootFilePath(value);
            }
            fn getRootFilePath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getRootFilePath").getRootFilePath());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setRootFilePathFn = Methods.setRootFilePath, .getRootFilePathFn = Methods.getRootFilePath };
        return this;
    }
};

