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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

//Warning you must have sql root access
pub const InitDb = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.InitDb";
    anyType: ?Object = null,
    METHOD_CALL_GET_HOST_NAME: ?*String = null,
    METHOD_CALL_ADD_USERS: ?*String = null,
    METHOD_CALL_ADD_DATABASES: ?*String = null,
    METHOD_CALL_ADD_TABLES: ?*String = null,
    METHOD_CALL_TEMP_MAIN_PATH: ?*String = null,
    METHOD_CALL_MAIN_PATH: ?*String = null,

    fn initFields(this: *Self) void {
        this.anyType = null;
        this.METHOD_CALL_GET_HOST_NAME = String.literal("getHostName");
        this.METHOD_CALL_ADD_USERS = String.literal("addUsers");
        this.METHOD_CALL_ADD_DATABASES = String.literal("addDatabases");
        this.METHOD_CALL_ADD_TABLES = String.literal("addTables");
        this.METHOD_CALL_TEMP_MAIN_PATH = String.literal("useTemporaryMainPath");
        this.METHOD_CALL_MAIN_PATH = String.literal("useNormalMainPath");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(dbConnectionInfo: ?*DbConnectionInfo) *Self {
        _ = dbConnectionInfo;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setHelper(self: *Self, anyType: ?Object) void {
        self.anyType = anyType;
    }
    

    pub fn getHelper(self: *Self) ?Object {
        return self.anyType;
    }
    

    pub fn getHostName(self: *Self) ?*String {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_GET_HOST_NAME, null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result;
        }
        // catch (Exception e):
//             return null;
    }
    

    pub fn addUsers(self: *Self) bool {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_ADD_USERS, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn addDatabases(self: *Self) bool {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_ADD_DATABASES, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn addTables(self: *Self) bool {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_ADD_TABLES, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn useTemporaryMainPath(self: *Self) bool {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_TEMP_MAIN_PATH, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn useNormalMainPath(self: *Self) bool {
        { // try
            const dynamicClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(dynamicClass.?, "getMethod", .{ self.METHOD_CALL_MAIN_PATH, null }));
            const result: ?*Boolean = Inheritance.cast(?*Boolean, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result.?.booleanValue();
        }
        // catch (Exception e):
//             return false;
    }
};

