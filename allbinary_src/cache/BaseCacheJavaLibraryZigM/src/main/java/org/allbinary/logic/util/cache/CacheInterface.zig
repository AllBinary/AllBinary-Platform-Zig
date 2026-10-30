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
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const CacheInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.CacheInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addFn: *const fn (pointer: *anyopaque, cacheableInterface: ?*CacheableInterface) void,
    addArrayFn: *const fn (pointer: *anyopaque, cacheableInterfaces: []?*CacheableInterface) void,
    clearFn: *const fn (pointer: *anyopaque) void,

    pub fn add(self: *Self, cacheableInterface: ?*CacheableInterface) void {
        return self.addFn(self.pointer, cacheableInterface);
    }

    pub fn addArray(self: *Self, cacheableInterfaces: []?*CacheableInterface) void {
        return self.addArrayFn(self.pointer, cacheableInterfaces);
    }

    pub fn clear(self: *Self) void {
        return self.clearFn(self.pointer);
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
            fn add(pointer: *anyopaque, cacheableInterface: ?*CacheableInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(cacheableInterface);
            }
            fn addArray(pointer: *anyopaque, cacheableInterfaces: []?*CacheableInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addArray").addArray(cacheableInterfaces);
            }
            fn clear(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "clear").clear();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .addFn = Methods.add, .addArrayFn = Methods.addArray, .clearFn = Methods.clear };
        return this;
    }
};

