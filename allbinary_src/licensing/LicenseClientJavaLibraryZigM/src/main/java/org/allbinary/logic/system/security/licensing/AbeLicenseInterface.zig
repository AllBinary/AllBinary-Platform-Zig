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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const LicenseType = @import("org/allbinary/logic/system/security/licensing/LicenseType.zig").LicenseType;

// Java interface: an implementation is a pointer and a table of functions
pub const AbeLicenseInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeLicenseInterface";
    pointer: *anyopaque,
    object: Object,
    hasKeyFn: *const fn (pointer: *anyopaque) bool,
    getKeyFn: *const fn (pointer: *anyopaque, keyName: ?*String) ?*String,
    getLicenseIdFn: *const fn (pointer: *anyopaque) ?*String,
    getServersFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getSpecialFn: *const fn (pointer: *anyopaque) ?*String,
    getLicenseTypeFn: *const fn (pointer: *anyopaque) ?*LicenseType,
    isValidFn: *const fn (pointer: *anyopaque) bool,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn hasKey(self: *Self) bool {
        return self.hasKeyFn(self.pointer);
    }

    pub fn getKey(self: *Self, keyName: ?*String) ?*String {
        return self.getKeyFn(self.pointer, keyName);
    }

    pub fn getLicenseId(self: *Self) ?*String {
        return self.getLicenseIdFn(self.pointer);
    }

    pub fn getServers(self: *Self) ?*BasicArrayList {
        return self.getServersFn(self.pointer);
    }

    pub fn getSpecial(self: *Self) ?*String {
        return self.getSpecialFn(self.pointer);
    }

    pub fn getLicenseType(self: *Self) ?*LicenseType {
        return self.getLicenseTypeFn(self.pointer);
    }

    pub fn isValid(self: *Self) bool {
        return self.isValidFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn hasKey(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "hasKey").hasKey();
            }
            fn getKey(pointer: *anyopaque, keyName: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getKey").getKey(keyName));
            }
            fn getLicenseId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLicenseId").getLicenseId());
            }
            fn getServers(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getServers").getServers());
            }
            fn getSpecial(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial").getSpecial());
            }
            fn getLicenseType(pointer: *anyopaque) ?*LicenseType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*LicenseType, Inheritance.receiver(implementation, "getLicenseType").getLicenseType());
            }
            fn isValid(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isValid").isValid();
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .hasKeyFn = Methods.hasKey, .getKeyFn = Methods.getKey, .getLicenseIdFn = Methods.getLicenseId, .getServersFn = Methods.getServers, .getSpecialFn = Methods.getSpecial, .getLicenseTypeFn = Methods.getLicenseType, .isValidFn = Methods.isValid, .toStringFn = Methods.toString };
        return this;
    }
};

