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
// package org.allbinary.business.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;

// Java interface: an implementation is a pointer and a table of functions
pub const CategoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getChildNodesFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    addChildPropertyFn: *const fn (pointer: *anyopaque, categoryPropertiesInterface: ?*CategoryPropertiesInterface) bool,
    addChildFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) bool,
    removeChildFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) bool,
    isLeafFn: *const fn (pointer: *anyopaque) bool,
    getPropertiesFn: *const fn (pointer: *anyopaque) ?*CategoryPropertiesInterface,
    setPropertiesFn: *const fn (pointer: *anyopaque, categoryPropertiesInterface: ?*CategoryPropertiesInterface) void,
    getHierarchyFn: *const fn (pointer: *anyopaque) ?*CategoryHierarchyInterface,
    setHierarchyFn: *const fn (pointer: *anyopaque, categoryHierarchyInterface: ?*CategoryHierarchyInterface) void,
    getPathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getFilePathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getWebAppPathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getRootFilePathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn getChildNodes(self: *Self) ?*BasicArrayList {
        return self.getChildNodesFn(self.pointer);
    }

    pub fn addChildProperty(self: *Self, categoryPropertiesInterface: ?*CategoryPropertiesInterface) bool {
        return self.addChildPropertyFn(self.pointer, categoryPropertiesInterface);
    }

    pub fn addChild(self: *Self, categoryInterface: ?*CategoryInterface) bool {
        return self.addChildFn(self.pointer, categoryInterface);
    }

    pub fn removeChild(self: *Self, categoryInterface: ?*CategoryInterface) bool {
        return self.removeChildFn(self.pointer, categoryInterface);
    }

    pub fn isLeaf(self: *Self) bool {
        return self.isLeafFn(self.pointer);
    }

    pub fn getProperties(self: *Self) ?*CategoryPropertiesInterface {
        return self.getPropertiesFn(self.pointer);
    }

    pub fn setProperties(self: *Self, categoryPropertiesInterface: ?*CategoryPropertiesInterface) void {
        return self.setPropertiesFn(self.pointer, categoryPropertiesInterface);
    }

    pub fn getHierarchy(self: *Self) ?*CategoryHierarchyInterface {
        return self.getHierarchyFn(self.pointer);
    }

    pub fn setHierarchy(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) void {
        return self.setHierarchyFn(self.pointer, categoryHierarchyInterface);
    }

    pub fn getPath(self: *Self) ?*AbPath {
        return self.getPathFn(self.pointer);
    }

    pub fn getFilePath(self: *Self) ?*AbPath {
        return self.getFilePathFn(self.pointer);
    }

    pub fn getWebAppPath(self: *Self) ?*AbPath {
        return self.getWebAppPathFn(self.pointer);
    }

    pub fn getRootFilePath(self: *Self) ?*AbPath {
        return self.getRootFilePathFn(self.pointer);
    }

    pub fn log(self: *Self) void {
        return self.logFn(self.pointer);
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
            fn getChildNodes(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getChildNodes").getChildNodes());
            }
            fn addChildProperty(pointer: *anyopaque, categoryPropertiesInterface: ?*CategoryPropertiesInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addChildProperty").addChildProperty(categoryPropertiesInterface);
            }
            fn addChild(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addChild").addChild(categoryInterface);
            }
            fn removeChild(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeChild").removeChild(categoryInterface);
            }
            fn isLeaf(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isLeaf").isLeaf();
            }
            fn getProperties(pointer: *anyopaque) ?*CategoryPropertiesInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryPropertiesInterface, Inheritance.receiver(implementation, "getProperties").getProperties());
            }
            fn setProperties(pointer: *anyopaque, categoryPropertiesInterface: ?*CategoryPropertiesInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProperties").setProperties(categoryPropertiesInterface);
            }
            fn getHierarchy(pointer: *anyopaque) ?*CategoryHierarchyInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryHierarchyInterface, Inheritance.receiver(implementation, "getHierarchy").getHierarchy());
            }
            fn setHierarchy(pointer: *anyopaque, categoryHierarchyInterface: ?*CategoryHierarchyInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHierarchy").setHierarchy(categoryHierarchyInterface);
            }
            fn getPath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getPath").getPath());
            }
            fn getFilePath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getFilePath").getFilePath());
            }
            fn getWebAppPath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getWebAppPath").getWebAppPath());
            }
            fn getRootFilePath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getRootFilePath").getRootFilePath());
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .getChildNodesFn = Methods.getChildNodes, .addChildPropertyFn = Methods.addChildProperty, .addChildFn = Methods.addChild, .removeChildFn = Methods.removeChild, .isLeafFn = Methods.isLeaf, .getPropertiesFn = Methods.getProperties, .setPropertiesFn = Methods.setProperties, .getHierarchyFn = Methods.getHierarchy, .setHierarchyFn = Methods.setHierarchy, .getPathFn = Methods.getPath, .getFilePathFn = Methods.getFilePath, .getWebAppPathFn = Methods.getWebAppPath, .getRootFilePathFn = Methods.getRootFilePath, .logFn = Methods.log };
        return this;
    }
};

