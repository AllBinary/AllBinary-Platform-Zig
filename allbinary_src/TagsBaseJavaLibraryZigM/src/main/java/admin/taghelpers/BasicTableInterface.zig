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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const BasicTableInterface = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.BasicTableInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    dropFn: *const fn (pointer: *anyopaque) ?*String,
    createFn: *const fn (pointer: *anyopaque) ?*String,
    restoreFn: *const fn (pointer: *anyopaque) ?*String,
    backupFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn drop(self: *Self) ?*String {
        return self.dropFn(self.pointer);
    }

    pub fn create(self: *Self) ?*String {
        return self.createFn(self.pointer);
    }

    pub fn restore(self: *Self) ?*String {
        return self.restoreFn(self.pointer);
    }

    pub fn backup(self: *Self) ?*String {
        return self.backupFn(self.pointer);
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
            fn drop(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "drop").drop());
            }
            fn create(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "create").create());
            }
            fn restore(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "restore").restore());
            }
            fn backup(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "backup").backup());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .dropFn = Methods.drop, .createFn = Methods.create, .restoreFn = Methods.restore, .backupFn = Methods.backup };
        return this;
    }
};

