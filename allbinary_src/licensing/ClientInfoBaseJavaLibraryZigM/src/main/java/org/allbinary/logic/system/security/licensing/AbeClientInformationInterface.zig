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
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

// Java interface: an implementation is a pointer and a table of functions
pub const AbeClientInformationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeClientInformationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    initFn: *const fn (interface_pointer: *anyopaque) void,
    getOperatingSystemInterfaceFn: *const fn (interface_pointer: *anyopaque) ?*GenericOperatingSystem,
    getNameFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getSpecialNameFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getVersionFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getLicenseIdFn: *const fn (interface_pointer: *anyopaque) ?*String,
    getLicenseServersFn: *const fn (interface_pointer: *anyopaque) ?*BasicArrayList,
    getLicenseServerFn: *const fn (interface_pointer: *anyopaque, index: i32) ?*String,
    getNumberOfLicenseServersFn: *const fn (interface_pointer: *anyopaque) i32,
    toHashtableFn: *const fn (interface_pointer: *anyopaque) ?*ABHashtable,
    isSameIdFn: *const fn (interface_pointer: *anyopaque, alicenseId: ?*String) bool,
    isLargerOrDifferentServerListFn: *const fn (interface_pointer: *anyopaque, vector: ?*BasicArrayList) bool,
    isHardSaleFn: *const fn (interface_pointer: *anyopaque) bool,
    toShortStringFn: *const fn (interface_pointer: *anyopaque) ?*String,

    pub fn init(self: *Self) void {
        return self.initFn(self.pointer);
    }

    pub fn getOperatingSystemInterface(self: *Self) ?*GenericOperatingSystem {
        return self.getOperatingSystemInterfaceFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getSpecialName(self: *Self) ?*String {
        return self.getSpecialNameFn(self.pointer);
    }

    pub fn getVersion(self: *Self) ?*String {
        return self.getVersionFn(self.pointer);
    }

    pub fn getLicenseId(self: *Self) ?*String {
        return self.getLicenseIdFn(self.pointer);
    }

    pub fn getLicenseServers(self: *Self) ?*BasicArrayList {
        return self.getLicenseServersFn(self.pointer);
    }

    pub fn getLicenseServer(self: *Self, index: i32) ?*String {
        return self.getLicenseServerFn(self.pointer, index);
    }

    pub fn getNumberOfLicenseServers(self: *Self) i32 {
        return self.getNumberOfLicenseServersFn(self.pointer);
    }

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        return self.toHashtableFn(self.pointer);
    }

    pub fn isSameId(self: *Self, alicenseId: ?*String) bool {
        return self.isSameIdFn(self.pointer, alicenseId);
    }

    pub fn isLargerOrDifferentServerList(self: *Self, vector: ?*BasicArrayList) bool {
        return self.isLargerOrDifferentServerListFn(self.pointer, vector);
    }

    pub fn isHardSale(self: *Self) bool {
        return self.isHardSaleFn(self.pointer);
    }

    pub fn toShortString(self: *Self) ?*String {
        return self.toShortStringFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn init(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "init").init();
            }
            fn getOperatingSystemInterface(interface_pointer: *anyopaque) ?*GenericOperatingSystem {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiver(implementation, "getOperatingSystemInterface").getOperatingSystemInterface());
            }
            fn getName(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getSpecialName(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecialName").getSpecialName());
            }
            fn getVersion(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getVersion").getVersion());
            }
            fn getLicenseId(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLicenseId").getLicenseId());
            }
            fn getLicenseServers(interface_pointer: *anyopaque) ?*BasicArrayList {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getLicenseServers").getLicenseServers());
            }
            fn getLicenseServer(interface_pointer: *anyopaque, index: i32) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.call(implementation, "getLicenseServer", .{ index }));
            }
            fn getNumberOfLicenseServers(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getNumberOfLicenseServers").getNumberOfLicenseServers();
            }
            fn toHashtable(interface_pointer: *anyopaque) ?*ABHashtable {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "toHashtable").toHashtable());
            }
            fn isSameId(interface_pointer: *anyopaque, alicenseId: ?*String) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "isSameId", .{ alicenseId });
            }
            fn isLargerOrDifferentServerList(interface_pointer: *anyopaque, vector: ?*BasicArrayList) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "isLargerOrDifferentServerList", .{ vector });
            }
            fn isHardSale(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isHardSale").isHardSale();
            }
            fn toShortString(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toShortString").toShortString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .initFn = Methods.init, .getOperatingSystemInterfaceFn = Methods.getOperatingSystemInterface, .getNameFn = Methods.getName, .getSpecialNameFn = Methods.getSpecialName, .getVersionFn = Methods.getVersion, .getLicenseIdFn = Methods.getLicenseId, .getLicenseServersFn = Methods.getLicenseServers, .getLicenseServerFn = Methods.getLicenseServer, .getNumberOfLicenseServersFn = Methods.getNumberOfLicenseServers, .toHashtableFn = Methods.toHashtable, .isSameIdFn = Methods.isSameId, .isLargerOrDifferentServerListFn = Methods.isLargerOrDifferentServerList, .isHardSaleFn = Methods.isHardSale, .toShortStringFn = Methods.toShortString };
        return this;
    }
};

