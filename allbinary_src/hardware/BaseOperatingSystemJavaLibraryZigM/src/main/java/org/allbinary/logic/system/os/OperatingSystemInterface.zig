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
// package org.allbinary.logic.system.os

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CharacterSet = @import("org/allbinary/logic/java/character/CharacterSet.zig").CharacterSet;

// Java interface: an implementation is a pointer and a table of functions
pub const OperatingSystemInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.OperatingSystemInterface";
    pointer: *anyopaque,
    object: Object,
    getNameFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getVersionFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getArchFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getCharacterSetFn: *const fn (interface_pointer: *anyopaque) ?*CharacterSet,
    isOverScanFn: *const fn (interface_pointer: *anyopaque) bool,
    getOverScanXPercentFn: *const fn (interface_pointer: *anyopaque) i32,
    getOverScanYPercentFn: *const fn (interface_pointer: *anyopaque) i32,
    isScalableFn: *const fn (interface_pointer: *anyopaque) bool,
    isAutoHideFn: *const fn (interface_pointer: *anyopaque) bool,
    toStringFn: *const fn (interface_pointer: *anyopaque) ?*String,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getVersion(self: *Self) ?*String {
        return self.getVersionFn(self.pointer);
    }

    pub fn getArch(self: *Self) ?*String {
        return self.getArchFn(self.pointer);
    }

    pub fn getCharacterSet(self: *Self) ?*CharacterSet {
        return self.getCharacterSetFn(self.pointer);
    }

    pub fn isOverScan(self: *Self) bool {
        return self.isOverScanFn(self.pointer);
    }

    pub fn getOverScanXPercent(self: *Self) i32 {
        return self.getOverScanXPercentFn(self.pointer);
    }

    pub fn getOverScanYPercent(self: *Self) i32 {
        return self.getOverScanYPercentFn(self.pointer);
    }

    pub fn isScalable(self: *Self) bool {
        return self.isScalableFn(self.pointer);
    }

    pub fn isAutoHide(self: *Self) bool {
        return self.isAutoHideFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn getName(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getVersion(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getVersion").getVersion());
            }
            fn getArch(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getArch").getArch());
            }
            fn getCharacterSet(interface_pointer: *anyopaque) ?*CharacterSet {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*CharacterSet, Inheritance.receiver(implementation, "getCharacterSet").getCharacterSet());
            }
            fn isOverScan(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isOverScan").isOverScan();
            }
            fn getOverScanXPercent(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getOverScanXPercent").getOverScanXPercent();
            }
            fn getOverScanYPercent(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getOverScanYPercent").getOverScanYPercent();
            }
            fn isScalable(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isScalable").isScalable();
            }
            fn isAutoHide(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isAutoHide").isAutoHide();
            }
            fn toString(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .getNameFn = Methods.getName, .getVersionFn = Methods.getVersion, .getArchFn = Methods.getArch, .getCharacterSetFn = Methods.getCharacterSet, .isOverScanFn = Methods.isOverScan, .getOverScanXPercentFn = Methods.getOverScanXPercent, .getOverScanYPercentFn = Methods.getOverScanYPercent, .isScalableFn = Methods.isScalable, .isAutoHideFn = Methods.isAutoHide, .toStringFn = Methods.toString };
        return this;
    }
};

