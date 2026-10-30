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
// package org.allbinary.data.tables.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.transform.info.TransformInfoEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFn: *const fn (pointer: *anyopaque, name: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface,
    getObjectConfigsFn: *const fn (pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList,
    getNamesFn: *const fn (pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList,
    deleteFn: *const fn (pointer: *anyopaque, name: ?*String) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,
    updateFn: *const fn (pointer: *anyopaque, updatedValues: ?*HashMap) void,

    pub fn get(self: *Self, name: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
        return self.getFn(self.pointer, name, propertiesHashMap, pageContext);
    }

    pub fn getObjectConfigs(self: *Self, storeName: ?*String) ?*BasicArrayList {
        return self.getObjectConfigsFn(self.pointer, storeName);
    }

    pub fn getNames(self: *Self, storeName: ?*String) ?*BasicArrayList {
        return self.getNamesFn(self.pointer, storeName);
    }

    pub fn delete(self: *Self, name: ?*String) void {
        return self.deleteFn(self.pointer, name);
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
            fn get(pointer: *anyopaque, name: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) ?*TransformInfoInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoInterface, Inheritance.receiver(implementation, "get").get(name, propertiesHashMap, pageContext));
            }
            fn getObjectConfigs(pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getObjectConfigs").getObjectConfigs(storeName));
            }
            fn getNames(pointer: *anyopaque, storeName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getNames").getNames(storeName));
            }
            fn delete(pointer: *anyopaque, name: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delete").delete(name);
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
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getFn = Methods.get, .getObjectConfigsFn = Methods.getObjectConfigs, .getNamesFn = Methods.getNames, .deleteFn = Methods.delete, .insertFn = Methods.insert, .updateFn = Methods.update };
        return this;
    }
};

