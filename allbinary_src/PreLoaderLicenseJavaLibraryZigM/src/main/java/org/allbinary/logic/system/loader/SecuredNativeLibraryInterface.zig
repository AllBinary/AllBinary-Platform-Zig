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
// package org.allbinary.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const SecuredNativeLibraryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.SecuredNativeLibraryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    loadFn: *const fn (pointer: *anyopaque) void,
    unloadFn: *const fn (pointer: *anyopaque) void,
    unlockFn: *const fn (pointer: *anyopaque, key: ?*String) bool,
    getLibraryNameFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn load(self: *Self) void {
        return self.loadFn(self.pointer);
    }

    pub fn unload(self: *Self) void {
        return self.unloadFn(self.pointer);
    }

    pub fn unlock(self: *Self, key: ?*String) bool {
        return self.unlockFn(self.pointer, key);
    }

    pub fn getLibraryName(self: *Self) ?*String {
        return self.getLibraryNameFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
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
            fn load(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "load").load();
            }
            fn unload(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "unload").unload();
            }
            fn unlock(pointer: *anyopaque, key: ?*String) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "unlock").unlock(key);
            }
            fn getLibraryName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLibraryName").getLibraryName());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .loadFn = Methods.load, .unloadFn = Methods.unload, .unlockFn = Methods.unlock, .getLibraryNameFn = Methods.getLibraryName, .getNameFn = Methods.getName };
        return this;
    }
};

