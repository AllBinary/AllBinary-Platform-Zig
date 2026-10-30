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
// package org.allbinary.data.tables.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const BasicDataTableInterface = @import("org/allbinary/data/tables/BasicDataTableInterface.zig").BasicDataTableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const UserEntityInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.UserEntityInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicDataTableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getAdministratorsFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getStoreManagersFn: *const fn (pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList,
    getCustomersFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getUsersWithRoleFn: *const fn (pointer: *anyopaque, userRole: ?*UserRole) ?*BasicArrayList,
    getUsersFn: *const fn (pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList,
    getUserFn: *const fn (pointer: *anyopaque, userName: ?*String) ?*UserInterface,
    loginFn: *const fn (pointer: *anyopaque, userName: ?*String, password: ?*String) ?*String,
    deleteWhereFn: *const fn (pointer: *anyopaque, key: ?*String, value: ?*String) void,
    insertFn: *const fn (pointer: *anyopaque, values: ?*BasicArrayList) void,
    updateFn: *const fn (pointer: *anyopaque, userName: ?*String, updatedValues: ?*HashMap) void,

    pub fn getAdministrators(self: *Self) ?*BasicArrayList {
        return self.getAdministratorsFn(self.pointer);
    }

    pub fn getStoreManagers(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        return self.getStoreManagersFn(self.pointer, storeFrontInterface);
    }

    pub fn getCustomers(self: *Self) ?*BasicArrayList {
        return self.getCustomersFn(self.pointer);
    }

    pub fn getUsersWithRole(self: *Self, userRole: ?*UserRole) ?*BasicArrayList {
        return self.getUsersWithRoleFn(self.pointer, userRole);
    }

    pub fn getUsers(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        return self.getUsersFn(self.pointer, storeFrontInterface);
    }

    pub fn getUser(self: *Self, userName: ?*String) ?*UserInterface {
        return self.getUserFn(self.pointer, userName);
    }

    pub fn login(self: *Self, userName: ?*String, password: ?*String) ?*String {
        return self.loginFn(self.pointer, userName, password);
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
            fn getAdministrators(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getAdministrators").getAdministrators());
            }
            fn getStoreManagers(pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getStoreManagers").getStoreManagers(storeFrontInterface));
            }
            fn getCustomers(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getCustomers").getCustomers());
            }
            fn getUsersWithRole(pointer: *anyopaque, userRole: ?*UserRole) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getUsersWithRole").getUsersWithRole(userRole));
            }
            fn getUsers(pointer: *anyopaque, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getUsers").getUsers(storeFrontInterface));
            }
            fn getUser(pointer: *anyopaque, userName: ?*String) ?*UserInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserInterface, Inheritance.receiver(implementation, "getUser").getUser(userName));
            }
            fn login(pointer: *anyopaque, userName: ?*String, password: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "login").login(userName, password));
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
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicDataTableInterface.of(object).?.*, .toStringFn = Methods.toString, .getAdministratorsFn = Methods.getAdministrators, .getStoreManagersFn = Methods.getStoreManagers, .getCustomersFn = Methods.getCustomers, .getUsersWithRoleFn = Methods.getUsersWithRole, .getUsersFn = Methods.getUsers, .getUserFn = Methods.getUser, .loginFn = Methods.login, .deleteWhereFn = Methods.deleteWhere, .insertFn = Methods.insert, .updateFn = Methods.update };
        return this;
    }
};

