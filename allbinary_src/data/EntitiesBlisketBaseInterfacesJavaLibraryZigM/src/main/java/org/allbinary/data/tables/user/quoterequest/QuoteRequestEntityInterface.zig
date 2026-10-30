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
// package org.allbinary.data.tables.user.quoterequest

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const QuoteRequest = @import("org/allbinary/business/user/quoterequest/QuoteRequest.zig").QuoteRequest;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const QuoteRequestEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getFn: *const fn (pointer: *anyopaque, userName: ?*String, id: i32) ?*QuoteRequest,
    getIdsFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*BasicArrayList,
    deleteWhereFn: *const fn (pointer: *anyopaque, key: ?*String, value: ?*String) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,
    updateFn: *const fn (pointer: *anyopaque, userName: ?*String, updatedValues: ?*HashMap) void,

    pub fn get(self: *Self, userName: ?*String, id: i32) ?*QuoteRequest {
        return self.getFn(self.pointer, userName, id);
    }

    pub fn getIds(self: *Self, userName: ?*String) ?*BasicArrayList {
        return self.getIdsFn(self.pointer, userName);
    }

    pub fn deleteWhere(self: *Self, key: ?*String, value: ?*String) void {
        return self.deleteWhereFn(self.pointer, key, value);
    }

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        return self.insertFn(self.pointer, values);
    }

    pub fn update(self: *Self, userName: ?*String, updatedValues: ?*HashMap) void {
        return self.updateFn(self.pointer, userName, updatedValues);
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
            fn get(pointer: *anyopaque, userName: ?*String, id: i32) ?*QuoteRequest {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*QuoteRequest, Inheritance.receiver(implementation, "get").get(userName, id));
            }
            fn getIds(pointer: *anyopaque, userName: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getIds").getIds(userName));
            }
            fn deleteWhere(pointer: *anyopaque, key: ?*String, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deleteWhere").deleteWhere(key, value);
            }
            fn insert(pointer: *anyopaque, values: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "insert").insert(values);
            }
            fn update(pointer: *anyopaque, userName: ?*String, updatedValues: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(userName, updatedValues);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getFn = Methods.get, .getIdsFn = Methods.getIds, .deleteWhereFn = Methods.deleteWhere, .insertFn = Methods.insert, .updateFn = Methods.update };
        return this;
    }
};

