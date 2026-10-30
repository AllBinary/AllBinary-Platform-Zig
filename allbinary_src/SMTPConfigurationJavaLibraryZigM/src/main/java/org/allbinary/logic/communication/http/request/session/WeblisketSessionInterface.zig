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
// package org.allbinary.logic.communication.http.request.session

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const WeblisketSessionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    clearFn: *const fn (pointer: *anyopaque) void,
    getAttemptsFn: *const fn (pointer: *anyopaque) ?*Integer,
    getAuthenticationFn: *const fn (pointer: *anyopaque) ?*String,
    getCreationTimeFn: *const fn (pointer: *anyopaque) i64,
    getIdFn: *const fn (pointer: *anyopaque) ?*String,
    getLastAccessedTimeFn: *const fn (pointer: *anyopaque) i64,
    getOrderFn: *const fn (pointer: *anyopaque) ?*OrderInterface,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getPaymentMethodFn: *const fn (pointer: *anyopaque) ?*String,
    getRoleFn: *const fn (pointer: *anyopaque) ?*UserRole,
    getStoreNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeoutFn: *const fn (pointer: *anyopaque) ?*String,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getWebAppPathFn: *const fn (pointer: *anyopaque) ?*String,
    removeBasketFn: *const fn (pointer: *anyopaque) void,
    setAttemptsFn: *const fn (pointer: *anyopaque, value: ?*Integer) void,
    setAuthenticatedFn: *const fn (pointer: *anyopaque) void,
    setAuthenticatedFn: *const fn (pointer: *anyopaque, value: bool) void,
    setPasswordFn: *const fn (pointer: *anyopaque, password: ?*String) void,
    setPaymentMethodFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setRoleFn: *const fn (pointer: *anyopaque, aRole: ?*UserRole) void,
    setStoreNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTimeoutFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserNameFn: *const fn (pointer: *anyopaque, userName: ?*String) void,

    pub fn clear(self: *Self) void {
        return self.clearFn(self.pointer);
    }

    pub fn getAttempts(self: *Self) ?*Integer {
        return self.getAttemptsFn(self.pointer);
    }

    pub fn getAuthentication(self: *Self) ?*String {
        return self.getAuthenticationFn(self.pointer);
    }

    pub fn getCreationTime(self: *Self) i64 {
        return self.getCreationTimeFn(self.pointer);
    }

    pub fn getId(self: *Self) ?*String {
        return self.getIdFn(self.pointer);
    }

    pub fn getLastAccessedTime(self: *Self) i64 {
        return self.getLastAccessedTimeFn(self.pointer);
    }

    pub fn getOrder(self: *Self) ?*OrderInterface {
        return self.getOrderFn(self.pointer);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.getPaymentMethodFn(self.pointer);
    }

    pub fn getRole(self: *Self) ?*UserRole {
        return self.getRoleFn(self.pointer);
    }

    pub fn getStoreName(self: *Self) ?*String {
        return self.getStoreNameFn(self.pointer);
    }

    pub fn getTimeout(self: *Self) ?*String {
        return self.getTimeoutFn(self.pointer);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getWebAppPath(self: *Self) ?*String {
        return self.getWebAppPathFn(self.pointer);
    }

    pub fn removeBasket(self: *Self) void {
        return self.removeBasketFn(self.pointer);
    }

    pub fn setAttempts(self: *Self, value: ?*Integer) void {
        return self.setAttemptsFn(self.pointer, value);
    }

    pub fn setAuthenticated(self: *Self) void {
        return self.setAuthenticatedFn(self.pointer);
    }

    pub fn setAuthenticated(self: *Self, value: bool) void {
        return self.setAuthenticatedFn(self.pointer, value);
    }

    pub fn setPassword(self: *Self, password: ?*String) void {
        return self.setPasswordFn(self.pointer, password);
    }

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        return self.setPaymentMethodFn(self.pointer, value);
    }

    pub fn setRole(self: *Self, aRole: ?*UserRole) void {
        return self.setRoleFn(self.pointer, aRole);
    }

    pub fn setStoreName(self: *Self, value: ?*String) void {
        return self.setStoreNameFn(self.pointer, value);
    }

    pub fn setTimeout(self: *Self, value: ?*String) void {
        return self.setTimeoutFn(self.pointer, value);
    }

    pub fn setUserName(self: *Self, userName: ?*String) void {
        return self.setUserNameFn(self.pointer, userName);
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
            fn clear(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "clear").clear();
            }
            fn getAttempts(pointer: *anyopaque) ?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Integer, Inheritance.receiver(implementation, "getAttempts").getAttempts());
            }
            fn getAuthentication(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAuthentication").getAuthentication());
            }
            fn getCreationTime(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCreationTime").getCreationTime();
            }
            fn getId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getId").getId());
            }
            fn getLastAccessedTime(pointer: *anyopaque) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getLastAccessedTime").getLastAccessedTime();
            }
            fn getOrder(pointer: *anyopaque) ?*OrderInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*OrderInterface, Inheritance.receiver(implementation, "getOrder").getOrder());
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn getPaymentMethod(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPaymentMethod").getPaymentMethod());
            }
            fn getRole(pointer: *anyopaque) ?*UserRole {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserRole, Inheritance.receiver(implementation, "getRole").getRole());
            }
            fn getStoreName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreName").getStoreName());
            }
            fn getTimeout(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeout").getTimeout());
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getWebAppPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getWebAppPath").getWebAppPath());
            }
            fn removeBasket(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "removeBasket").removeBasket();
            }
            fn setAttempts(pointer: *anyopaque, value: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAttempts").setAttempts(value);
            }
            fn setAuthenticated(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAuthenticated").setAuthenticated();
            }
            fn setAuthenticated(pointer: *anyopaque, value: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAuthenticated").setAuthenticated(value);
            }
            fn setPassword(pointer: *anyopaque, password: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(password);
            }
            fn setPaymentMethod(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPaymentMethod").setPaymentMethod(value);
            }
            fn setRole(pointer: *anyopaque, aRole: ?*UserRole) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRole").setRole(aRole);
            }
            fn setStoreName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreName").setStoreName(value);
            }
            fn setTimeout(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeout").setTimeout(value);
            }
            fn setUserName(pointer: *anyopaque, userName: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(userName);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .clearFn = Methods.clear, .getAttemptsFn = Methods.getAttempts, .getAuthenticationFn = Methods.getAuthentication, .getCreationTimeFn = Methods.getCreationTime, .getIdFn = Methods.getId, .getLastAccessedTimeFn = Methods.getLastAccessedTime, .getOrderFn = Methods.getOrder, .getPasswordFn = Methods.getPassword, .getPaymentMethodFn = Methods.getPaymentMethod, .getRoleFn = Methods.getRole, .getStoreNameFn = Methods.getStoreName, .getTimeoutFn = Methods.getTimeout, .getUserNameFn = Methods.getUserName, .getWebAppPathFn = Methods.getWebAppPath, .removeBasketFn = Methods.removeBasket, .setAttemptsFn = Methods.setAttempts, .setAuthenticatedFn = Methods.setAuthenticated, .setAuthenticatedFn = Methods.setAuthenticated, .setPasswordFn = Methods.setPassword, .setPaymentMethodFn = Methods.setPaymentMethod, .setRoleFn = Methods.setRole, .setStoreNameFn = Methods.setStoreName, .setTimeoutFn = Methods.setTimeout, .setUserNameFn = Methods.setUserName };
        return this;
    }
};

