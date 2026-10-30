// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;

// Java interface: an implementation is a pointer and a table of functions
pub const LockedUtilInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.LockedUtilInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isLockedFn: *const fn (pointer: *anyopaque) bool,
    isLockedFeatureFn: *const fn (pointer: *anyopaque, lockableFeatrue: ?*LockableFeature) bool,

    pub fn isLocked(self: *Self) bool {
        return self.isLockedFn(self.pointer);
    }

    pub fn isLockedFeature(self: *Self, lockableFeatrue: ?*LockableFeature) bool {
        return self.isLockedFeatureFn(self.pointer, lockableFeatrue);
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
            fn isLocked(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isLocked").isLocked();
            }
            fn isLockedFeature(pointer: *anyopaque, lockableFeatrue: ?*LockableFeature) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isLockedFeature").isLockedFeature(lockableFeatrue);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isLockedFn = Methods.isLocked, .isLockedFeatureFn = Methods.isLockedFeature };
        return this;
    }
};

