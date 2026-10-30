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
// package org.allbinary.business.category.properties

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

// Java interface: an implementation is a pointer and a table of functions
pub const CategoryPropertiesInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.CategoryPropertiesInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setValueFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getValueFn: *const fn (pointer: *anyopaque) ?*String,
    getWebAppPathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getPathFn: *const fn (pointer: *anyopaque, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath,
    getFileNameFn: *const fn (pointer: *anyopaque) ?*String,
    isRootFn: *const fn (pointer: *anyopaque) bool,
    isRealRootFn: *const fn (pointer: *anyopaque) bool,

    pub fn setValue(self: *Self, value: ?*String) void {
        return self.setValueFn(self.pointer, value);
    }

    pub fn getValue(self: *Self) ?*String {
        return self.getValueFn(self.pointer);
    }

    pub fn getWebAppPath(self: *Self) ?*AbPath {
        return self.getWebAppPathFn(self.pointer);
    }

    pub fn getPath(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath {
        return self.getPathFn(self.pointer, categoryHierarchyInterface);
    }

    pub fn getFileName(self: *Self) ?*String {
        return self.getFileNameFn(self.pointer);
    }

    pub fn isRoot(self: *Self) bool {
        return self.isRootFn(self.pointer);
    }

    pub fn isRealRoot(self: *Self) bool {
        return self.isRealRootFn(self.pointer);
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
            fn setValue(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setValue").setValue(value);
            }
            fn getValue(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getValue").getValue());
            }
            fn getWebAppPath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getWebAppPath").getWebAppPath());
            }
            fn getPath(pointer: *anyopaque, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getPath").getPath(categoryHierarchyInterface));
            }
            fn getFileName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFileName").getFileName());
            }
            fn isRoot(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isRoot").isRoot();
            }
            fn isRealRoot(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isRealRoot").isRealRoot();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .setValueFn = Methods.setValue, .getValueFn = Methods.getValue, .getWebAppPathFn = Methods.getWebAppPath, .getPathFn = Methods.getPath, .getFileNameFn = Methods.getFileName, .isRootFn = Methods.isRoot, .isRealRootFn = Methods.isRealRoot };
        return this;
    }
};

