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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const CategoryFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRootInstanceFn: *const fn (pointer: *anyopaque) ?*CategoryInterface,
    getRootInstanceFn: *const fn (pointer: *anyopaque, categoryPath: ?*AbPath) ?*CategoryInterface,
    getRootInstanceFromNodeFn: *const fn (pointer: *anyopaque, node: ?*Node) ?*CategoryInterface,
    getInstanceFn: *const fn (pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, name: ?*String) ?*CategoryInterface,
    getInstanceFn: *const fn (pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, node: ?*Node) ?*CategoryInterface,
    getInstanceFn: *const fn (pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) ?*CategoryInterface,

    pub fn getRootInstance(self: *Self) ?*CategoryInterface {
        return self.getRootInstanceFn(self.pointer);
    }

    pub fn getRootInstance(self: *Self, categoryPath: ?*AbPath) ?*CategoryInterface {
        return self.getRootInstanceFn(self.pointer, categoryPath);
    }

    pub fn getRootInstanceFromNode(self: *Self, node: ?*Node) ?*CategoryInterface {
        return self.getRootInstanceFromNodeFn(self.pointer, node);
    }

    pub fn getInstance(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, name: ?*String) ?*CategoryInterface {
        return self.getInstanceFn(self.pointer, rootCategoryInterface, parentCategoryInterface, name);
    }

    pub fn getInstance(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, node: ?*Node) ?*CategoryInterface {
        return self.getInstanceFn(self.pointer, rootCategoryInterface, parentCategoryInterface, node);
    }

    pub fn getInstance(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) ?*CategoryInterface {
        return self.getInstanceFn(self.pointer, rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap);
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
            fn getRootInstance(pointer: *anyopaque) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getRootInstance").getRootInstance());
            }
            fn getRootInstance(pointer: *anyopaque, categoryPath: ?*AbPath) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getRootInstance").getRootInstance(categoryPath));
            }
            fn getRootInstanceFromNode(pointer: *anyopaque, node: ?*Node) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getRootInstanceFromNode").getRootInstanceFromNode(node));
            }
            fn getInstance(pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, name: ?*String) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getInstance").getInstance(rootCategoryInterface, parentCategoryInterface, name));
            }
            fn getInstance(pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, node: ?*Node) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getInstance").getInstance(rootCategoryInterface, parentCategoryInterface, node));
            }
            fn getInstance(pointer: *anyopaque, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getInstance").getInstance(rootCategoryInterface, parentCategoryInterface, categoryPropertiesHashMap));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getRootInstanceFn = Methods.getRootInstance, .getRootInstanceFn = Methods.getRootInstance, .getRootInstanceFromNodeFn = Methods.getRootInstanceFromNode, .getInstanceFn = Methods.getInstance, .getInstanceFn = Methods.getInstance, .getInstanceFn = Methods.getInstance };
        return this;
    }
};

