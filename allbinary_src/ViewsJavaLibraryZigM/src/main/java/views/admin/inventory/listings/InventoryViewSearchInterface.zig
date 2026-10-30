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
// package views.admin.inventory.listings

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const InventoryViewSearchInterface = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.listings.InventoryViewSearchInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    searchSingleStaticPageFn: *const fn (pointer: *anyopaque) ?*String,
    searchSingleDynamicPageFn: *const fn (pointer: *anyopaque) ?*String,
    searchFn: *const fn (pointer: *anyopaque) []?*String,
    getProductFn: *const fn (pointer: *anyopaque, product: ?*String) ?*String,

    pub fn searchSingleStaticPage(self: *Self) ?*String {
        return self.searchSingleStaticPageFn(self.pointer);
    }

    pub fn searchSingleDynamicPage(self: *Self) ?*String {
        return self.searchSingleDynamicPageFn(self.pointer);
    }

    pub fn search(self: *Self) []?*String {
        return self.searchFn(self.pointer);
    }

    pub fn getProduct(self: *Self, product: ?*String) ?*String {
        return self.getProductFn(self.pointer, product);
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
            fn searchSingleStaticPage(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "searchSingleStaticPage").searchSingleStaticPage());
            }
            fn searchSingleDynamicPage(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "searchSingleDynamicPage").searchSingleDynamicPage());
            }
            fn search(pointer: *anyopaque) []?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "search").search();
            }
            fn getProduct(pointer: *anyopaque, product: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProduct").getProduct(product));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .searchSingleStaticPageFn = Methods.searchSingleStaticPage, .searchSingleDynamicPageFn = Methods.searchSingleDynamicPage, .searchFn = Methods.search, .getProductFn = Methods.getProduct };
        return this;
    }
};

