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
// package org.allbinary.data.tree.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const CategoryModifierTreeInterface = @import("org/allbinary/data/tree/category/CategoryModifierTreeInterface.zig").CategoryModifierTreeInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const CategoryLoaderInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.category.CategoryLoaderInterface";
    pointer: *anyopaque,
    object: Object,
    base: CategoryModifierTreeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getDocFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*Document,
    getFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*CategoryInterface,
    getAllFn: *const fn (pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*CategoryInterface,

    pub fn getDoc(self: *Self, categoryInterface: ?*CategoryInterface) ?*Document {
        return self.getDocFn(self.pointer, categoryInterface);
    }

    pub fn get(self: *Self, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
        return self.getFn(self.pointer, categoryInterface);
    }

    pub fn getAll(self: *Self, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
        return self.getAllFn(self.pointer, categoryInterface);
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
            fn getDoc(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*Document {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Document, Inheritance.receiver(implementation, "getDoc").getDoc(categoryInterface));
            }
            fn get(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "get").get(categoryInterface));
            }
            fn getAll(pointer: *anyopaque, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CategoryInterface, Inheritance.receiver(implementation, "getAll").getAll(categoryInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = CategoryModifierTreeInterface.of(object).?.*, .toStringFn = Methods.toString, .getDocFn = Methods.getDoc, .getFn = Methods.get, .getAllFn = Methods.getAll };
        return this;
    }
};

