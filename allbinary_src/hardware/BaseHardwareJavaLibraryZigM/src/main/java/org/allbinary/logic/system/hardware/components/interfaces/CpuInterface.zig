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
// package org.allbinary.logic.system.hardware.components.interfaces

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const CpuInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.interfaces.CpuInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getProcessorFn: *const fn (pointer: *anyopaque) ?*String,
    getVendorIdFn: *const fn (pointer: *anyopaque) ?*String,
    getCpuFamilyFn: *const fn (pointer: *anyopaque) ?*String,
    getModelFn: *const fn (pointer: *anyopaque) ?*String,
    getModelNameFn: *const fn (pointer: *anyopaque) ?*String,
    getSteppingFn: *const fn (pointer: *anyopaque) ?*String,
    getCpuSpeedFn: *const fn (pointer: *anyopaque) ?*String,
    getCacheSizeFn: *const fn (pointer: *anyopaque) ?*String,
    compareToFn: *const fn (pointer: *anyopaque, cpuInterface: ?*CpuInterface) bool,

    pub fn getProcessor(self: *Self) ?*String {
        return self.getProcessorFn(self.pointer);
    }

    pub fn getVendorId(self: *Self) ?*String {
        return self.getVendorIdFn(self.pointer);
    }

    pub fn getCpuFamily(self: *Self) ?*String {
        return self.getCpuFamilyFn(self.pointer);
    }

    pub fn getModel(self: *Self) ?*String {
        return self.getModelFn(self.pointer);
    }

    pub fn getModelName(self: *Self) ?*String {
        return self.getModelNameFn(self.pointer);
    }

    pub fn getStepping(self: *Self) ?*String {
        return self.getSteppingFn(self.pointer);
    }

    pub fn getCpuSpeed(self: *Self) ?*String {
        return self.getCpuSpeedFn(self.pointer);
    }

    pub fn getCacheSize(self: *Self) ?*String {
        return self.getCacheSizeFn(self.pointer);
    }

    pub fn compareTo(self: *Self, cpuInterface: ?*CpuInterface) bool {
        return self.compareToFn(self.pointer, cpuInterface);
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
            fn getProcessor(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProcessor").getProcessor());
            }
            fn getVendorId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getVendorId").getVendorId());
            }
            fn getCpuFamily(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCpuFamily").getCpuFamily());
            }
            fn getModel(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getModel").getModel());
            }
            fn getModelName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getModelName").getModelName());
            }
            fn getStepping(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStepping").getStepping());
            }
            fn getCpuSpeed(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCpuSpeed").getCpuSpeed());
            }
            fn getCacheSize(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCacheSize").getCacheSize());
            }
            fn compareTo(pointer: *anyopaque, cpuInterface: ?*CpuInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "compareTo").compareTo(cpuInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getProcessorFn = Methods.getProcessor, .getVendorIdFn = Methods.getVendorId, .getCpuFamilyFn = Methods.getCpuFamily, .getModelFn = Methods.getModel, .getModelNameFn = Methods.getModelName, .getSteppingFn = Methods.getStepping, .getCpuSpeedFn = Methods.getCpuSpeed, .getCacheSizeFn = Methods.getCacheSize, .compareToFn = Methods.compareTo };
        return this;
    }
};

