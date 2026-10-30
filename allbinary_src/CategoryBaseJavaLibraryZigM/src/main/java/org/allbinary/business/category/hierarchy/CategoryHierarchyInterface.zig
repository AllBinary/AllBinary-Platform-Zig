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
// package org.allbinary.business.category.hierarchy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const CategoryHierarchyInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.hierarchy.CategoryHierarchyInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLevelFn: *const fn (pointer: *anyopaque) i32,
    getLevelStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRootFn: *const fn (pointer: *anyopaque) ?*CategoryInterface,
    getParentFn: *const fn (pointer: *anyopaque) ?*CategoryInterface,
    setLevelFn: *const fn (pointer: *anyopaque, level: i32) void,
    setRootFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) void,
    setParentFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) void,

    pub fn getLevel(self: *Self) i32 {
        return self.getLevelFn(self.pointer);
    }

    pub fn getLevelString(self: *Self) ?*String {
        return self.getLevelStringFn(self.pointer);
    }

    pub fn getRoot(self: *Self) ?*CategoryInterface {
        return self.getRootFn(self.pointer);
    }

    pub fn getParent(self: *Self) ?*CategoryInterface {
        return self.getParentFn(self.pointer);
    }

    pub fn setLevel(self: *Self, level: i32) void {
        return self.setLevelFn(self.pointer, level);
    }

    pub fn setRoot(self: *Self, categoryInterface: ?*CategoryInterface) void {
        return self.setRootFn(self.pointer, categoryInterface);
    }

    pub fn setParent(self: *Self, categoryInterface: ?*CategoryInterface) void {
        return self.setParentFn(self.pointer, categoryInterface);
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
            fn getLevel(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getLevel").getLevel();
            }
            fn getLevelString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLevelString").getLevelString());
            }
            fn getRoot(pointer: *anyopaque) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getRoot").getRoot());
            }
            fn getParent(pointer: *anyopaque) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getParent").getParent());
            }
            fn setLevel(pointer: *anyopaque, level: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLevel").setLevel(level);
            }
            fn setRoot(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRoot").setRoot(categoryInterface);
            }
            fn setParent(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setParent").setParent(categoryInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getLevelFn = Methods.getLevel, .getLevelStringFn = Methods.getLevelString, .getRootFn = Methods.getRoot, .getParentFn = Methods.getParent, .setLevelFn = Methods.setLevel, .setRootFn = Methods.setRoot, .setParentFn = Methods.setParent };
        return this;
    }
};

