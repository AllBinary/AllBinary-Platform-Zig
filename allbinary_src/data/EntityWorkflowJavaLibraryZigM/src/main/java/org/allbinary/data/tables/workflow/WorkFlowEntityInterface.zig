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
// package org.allbinary.data.tables.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;

// Java interface: an implementation is a pointer and a table of functions
pub const WorkFlowEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.workflow.WorkFlowEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFn: *const fn (pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList,
    getFn: *const fn (pointer: *anyopaque, name: ?*String, storeName: ?*String) ?*WorkFlowInterface,
    deleteFn: *const fn (pointer: *anyopaque, name: ?*String, storeName: ?*String) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,
    updateFn: *const fn (pointer: *anyopaque, updatedValues: ?*HashMap) void,

    pub fn get(self: *Self, storeName: ?*String) ?*BasicArrayList {
        return self.getFn(self.pointer, storeName);
    }

    pub fn get(self: *Self, name: ?*String, storeName: ?*String) ?*WorkFlowInterface {
        return self.getFn(self.pointer, name, storeName);
    }

    pub fn delete(self: *Self, name: ?*String, storeName: ?*String) void {
        return self.deleteFn(self.pointer, name, storeName);
    }

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        return self.insertFn(self.pointer, values);
    }

    pub fn update(self: *Self, updatedValues: ?*HashMap) void {
        return self.updateFn(self.pointer, updatedValues);
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
            fn get(pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "get").get(storeName));
            }
            fn get(pointer: *anyopaque, name: ?*String, storeName: ?*String) ?*WorkFlowInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*WorkFlowInterface, Inheritance.receiver(implementation, "get").get(name, storeName));
            }
            fn delete(pointer: *anyopaque, name: ?*String, storeName: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delete").delete(name, storeName);
            }
            fn insert(pointer: *anyopaque, values: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(values);
            }
            fn update(pointer: *anyopaque, updatedValues: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(updatedValues);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getFn = Methods.get, .getFn = Methods.get, .deleteFn = Methods.delete, .insertFn = Methods.insert, .updateFn = Methods.update };
        return this;
    }
};

