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
// package org.allbinary.business.user.commerce.money.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PaymentGatewayInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getEnableFn: *const fn (pointer: *anyopaque) ?*String,
    getStoreNameFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getPaymentMethodFn: *const fn (pointer: *anyopaque) ?*String,
    getModeFn: *const fn (pointer: *anyopaque) ?*String,
    getTestProtocolFn: *const fn (pointer: *anyopaque) ?*String,
    getTestServerFn: *const fn (pointer: *anyopaque) ?*String,
    getTestPortFn: *const fn (pointer: *anyopaque) ?*String,
    getTestPathFn: *const fn (pointer: *anyopaque) ?*String,
    getServerProtocolFn: *const fn (pointer: *anyopaque) ?*String,
    getServerFn: *const fn (pointer: *anyopaque) ?*String,
    getServerPortFn: *const fn (pointer: *anyopaque) ?*String,
    getServerPathFn: *const fn (pointer: *anyopaque) ?*String,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyProtocolFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyServerFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyPathFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyPortFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeoutFn: *const fn (pointer: *anyopaque) ?*String,
    getProxyTimeoutFn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial1Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial2Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial3Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial4Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial5Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial6Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial7Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial8Fn: *const fn (pointer: *anyopaque) ?*String,
    getSpecial9Fn: *const fn (pointer: *anyopaque) ?*String,
    getLastModifiedFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeEnteredFn: *const fn (pointer: *anyopaque) ?*String,
    setEnableFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStoreNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPaymentMethodFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setModeFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestProtocolFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestPortFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTestPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setServerProtocolFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setServerPortFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setServerPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyProtocolFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyServerFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyPathFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyPortFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyUserNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyPasswordFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTimeoutFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setProxyTimeoutFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial1Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial2Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial3Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial4Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial5Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial6Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial7Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial8Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecial9Fn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setLastModifiedFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTimeEnteredFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    toHashMapFn: *const fn (pointer: *anyopaque, isEncrypted: bool) ?*HashMap,
    toVectorFn: *const fn (pointer: *anyopaque, isEncrypted: bool) ?*BasicArrayList,

    pub fn getEnable(self: *Self) ?*String {
        return self.getEnableFn(self.pointer);
    }

    pub fn getStoreName(self: *Self) ?*String {
        return self.getStoreNameFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.getPaymentMethodFn(self.pointer);
    }

    pub fn getMode(self: *Self) ?*String {
        return self.getModeFn(self.pointer);
    }

    pub fn getTestProtocol(self: *Self) ?*String {
        return self.getTestProtocolFn(self.pointer);
    }

    pub fn getTestServer(self: *Self) ?*String {
        return self.getTestServerFn(self.pointer);
    }

    pub fn getTestPort(self: *Self) ?*String {
        return self.getTestPortFn(self.pointer);
    }

    pub fn getTestPath(self: *Self) ?*String {
        return self.getTestPathFn(self.pointer);
    }

    pub fn getServerProtocol(self: *Self) ?*String {
        return self.getServerProtocolFn(self.pointer);
    }

    pub fn getServer(self: *Self) ?*String {
        return self.getServerFn(self.pointer);
    }

    pub fn getServerPort(self: *Self) ?*String {
        return self.getServerPortFn(self.pointer);
    }

    pub fn getServerPath(self: *Self) ?*String {
        return self.getServerPathFn(self.pointer);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getPassword(self: *Self) ?*String {
        return self.getPasswordFn(self.pointer);
    }

    pub fn getProxyProtocol(self: *Self) ?*String {
        return self.getProxyProtocolFn(self.pointer);
    }

    pub fn getProxyServer(self: *Self) ?*String {
        return self.getProxyServerFn(self.pointer);
    }

    pub fn getProxyPath(self: *Self) ?*String {
        return self.getProxyPathFn(self.pointer);
    }

    pub fn getProxyPort(self: *Self) ?*String {
        return self.getProxyPortFn(self.pointer);
    }

    pub fn getProxyUserName(self: *Self) ?*String {
        return self.getProxyUserNameFn(self.pointer);
    }

    pub fn getProxyPassword(self: *Self) ?*String {
        return self.getProxyPasswordFn(self.pointer);
    }

    pub fn getTimeout(self: *Self) ?*String {
        return self.getTimeoutFn(self.pointer);
    }

    pub fn getProxyTimeout(self: *Self) ?*String {
        return self.getProxyTimeoutFn(self.pointer);
    }

    pub fn getSpecial1(self: *Self) ?*String {
        return self.getSpecial1Fn(self.pointer);
    }

    pub fn getSpecial2(self: *Self) ?*String {
        return self.getSpecial2Fn(self.pointer);
    }

    pub fn getSpecial3(self: *Self) ?*String {
        return self.getSpecial3Fn(self.pointer);
    }

    pub fn getSpecial4(self: *Self) ?*String {
        return self.getSpecial4Fn(self.pointer);
    }

    pub fn getSpecial5(self: *Self) ?*String {
        return self.getSpecial5Fn(self.pointer);
    }

    pub fn getSpecial6(self: *Self) ?*String {
        return self.getSpecial6Fn(self.pointer);
    }

    pub fn getSpecial7(self: *Self) ?*String {
        return self.getSpecial7Fn(self.pointer);
    }

    pub fn getSpecial8(self: *Self) ?*String {
        return self.getSpecial8Fn(self.pointer);
    }

    pub fn getSpecial9(self: *Self) ?*String {
        return self.getSpecial9Fn(self.pointer);
    }

    pub fn getLastModified(self: *Self) ?*String {
        return self.getLastModifiedFn(self.pointer);
    }

    pub fn getTimeEntered(self: *Self) ?*String {
        return self.getTimeEnteredFn(self.pointer);
    }

    pub fn setEnable(self: *Self, value: ?*String) void {
        return self.setEnableFn(self.pointer, value);
    }

    pub fn setStoreName(self: *Self, value: ?*String) void {
        return self.setStoreNameFn(self.pointer, value);
    }

    pub fn setName(self: *Self, value: ?*String) void {
        return self.setNameFn(self.pointer, value);
    }

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        return self.setPaymentMethodFn(self.pointer, value);
    }

    pub fn setMode(self: *Self, value: ?*String) void {
        return self.setModeFn(self.pointer, value);
    }

    pub fn setTestProtocol(self: *Self, value: ?*String) void {
        return self.setTestProtocolFn(self.pointer, value);
    }

    pub fn setTestServer(self: *Self, value: ?*String) void {
        return self.setTestServerFn(self.pointer, value);
    }

    pub fn setTestPort(self: *Self, value: ?*String) void {
        return self.setTestPortFn(self.pointer, value);
    }

    pub fn setTestPath(self: *Self, value: ?*String) void {
        return self.setTestPathFn(self.pointer, value);
    }

    pub fn setServerProtocol(self: *Self, value: ?*String) void {
        return self.setServerProtocolFn(self.pointer, value);
    }

    pub fn setServer(self: *Self, value: ?*String) void {
        return self.setServerFn(self.pointer, value);
    }

    pub fn setServerPort(self: *Self, value: ?*String) void {
        return self.setServerPortFn(self.pointer, value);
    }

    pub fn setServerPath(self: *Self, value: ?*String) void {
        return self.setServerPathFn(self.pointer, value);
    }

    pub fn setUserName(self: *Self, value: ?*String) void {
        return self.setUserNameFn(self.pointer, value);
    }

    pub fn setPassword(self: *Self, value: ?*String) void {
        return self.setPasswordFn(self.pointer, value);
    }

    pub fn setProxyProtocol(self: *Self, value: ?*String) void {
        return self.setProxyProtocolFn(self.pointer, value);
    }

    pub fn setProxyServer(self: *Self, value: ?*String) void {
        return self.setProxyServerFn(self.pointer, value);
    }

    pub fn setProxyPath(self: *Self, value: ?*String) void {
        return self.setProxyPathFn(self.pointer, value);
    }

    pub fn setProxyPort(self: *Self, value: ?*String) void {
        return self.setProxyPortFn(self.pointer, value);
    }

    pub fn setProxyUserName(self: *Self, value: ?*String) void {
        return self.setProxyUserNameFn(self.pointer, value);
    }

    pub fn setProxyPassword(self: *Self, value: ?*String) void {
        return self.setProxyPasswordFn(self.pointer, value);
    }

    pub fn setTimeout(self: *Self, value: ?*String) void {
        return self.setTimeoutFn(self.pointer, value);
    }

    pub fn setProxyTimeout(self: *Self, value: ?*String) void {
        return self.setProxyTimeoutFn(self.pointer, value);
    }

    pub fn setSpecial1(self: *Self, value: ?*String) void {
        return self.setSpecial1Fn(self.pointer, value);
    }

    pub fn setSpecial2(self: *Self, value: ?*String) void {
        return self.setSpecial2Fn(self.pointer, value);
    }

    pub fn setSpecial3(self: *Self, value: ?*String) void {
        return self.setSpecial3Fn(self.pointer, value);
    }

    pub fn setSpecial4(self: *Self, value: ?*String) void {
        return self.setSpecial4Fn(self.pointer, value);
    }

    pub fn setSpecial5(self: *Self, value: ?*String) void {
        return self.setSpecial5Fn(self.pointer, value);
    }

    pub fn setSpecial6(self: *Self, value: ?*String) void {
        return self.setSpecial6Fn(self.pointer, value);
    }

    pub fn setSpecial7(self: *Self, value: ?*String) void {
        return self.setSpecial7Fn(self.pointer, value);
    }

    pub fn setSpecial8(self: *Self, value: ?*String) void {
        return self.setSpecial8Fn(self.pointer, value);
    }

    pub fn setSpecial9(self: *Self, value: ?*String) void {
        return self.setSpecial9Fn(self.pointer, value);
    }

    pub fn setLastModified(self: *Self, value: ?*String) void {
        return self.setLastModifiedFn(self.pointer, value);
    }

    pub fn setTimeEntered(self: *Self, value: ?*String) void {
        return self.setTimeEnteredFn(self.pointer, value);
    }

    pub fn toHashMap(self: *Self, isEncrypted: bool) ?*HashMap {
        return self.toHashMapFn(self.pointer, isEncrypted);
    }

    pub fn toVector(self: *Self, isEncrypted: bool) ?*BasicArrayList {
        return self.toVectorFn(self.pointer, isEncrypted);
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
            fn getEnable(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getEnable").getEnable());
            }
            fn getStoreName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreName").getStoreName());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getPaymentMethod(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPaymentMethod").getPaymentMethod());
            }
            fn getMode(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getMode").getMode());
            }
            fn getTestProtocol(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestProtocol").getTestProtocol());
            }
            fn getTestServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestServer").getTestServer());
            }
            fn getTestPort(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestPort").getTestPort());
            }
            fn getTestPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestPath").getTestPath());
            }
            fn getServerProtocol(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServerProtocol").getServerProtocol());
            }
            fn getServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServer").getServer());
            }
            fn getServerPort(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServerPort").getServerPort());
            }
            fn getServerPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getServerPath").getServerPath());
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPassword").getPassword());
            }
            fn getProxyProtocol(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyProtocol").getProxyProtocol());
            }
            fn getProxyServer(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyServer").getProxyServer());
            }
            fn getProxyPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyPath").getProxyPath());
            }
            fn getProxyPort(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyPort").getProxyPort());
            }
            fn getProxyUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyUserName").getProxyUserName());
            }
            fn getProxyPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyPassword").getProxyPassword());
            }
            fn getTimeout(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeout").getTimeout());
            }
            fn getProxyTimeout(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getProxyTimeout").getProxyTimeout());
            }
            fn getSpecial1(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial1").getSpecial1());
            }
            fn getSpecial2(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial2").getSpecial2());
            }
            fn getSpecial3(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial3").getSpecial3());
            }
            fn getSpecial4(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial4").getSpecial4());
            }
            fn getSpecial5(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial5").getSpecial5());
            }
            fn getSpecial6(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial6").getSpecial6());
            }
            fn getSpecial7(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial7").getSpecial7());
            }
            fn getSpecial8(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial8").getSpecial8());
            }
            fn getSpecial9(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial9").getSpecial9());
            }
            fn getLastModified(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastModified").getLastModified());
            }
            fn getTimeEntered(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeEntered").getTimeEntered());
            }
            fn setEnable(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEnable").setEnable(value);
            }
            fn setStoreName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreName").setStoreName(value);
            }
            fn setName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(value);
            }
            fn setPaymentMethod(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPaymentMethod").setPaymentMethod(value);
            }
            fn setMode(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMode").setMode(value);
            }
            fn setTestProtocol(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestProtocol").setTestProtocol(value);
            }
            fn setTestServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestServer").setTestServer(value);
            }
            fn setTestPort(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestPort").setTestPort(value);
            }
            fn setTestPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTestPath").setTestPath(value);
            }
            fn setServerProtocol(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServerProtocol").setServerProtocol(value);
            }
            fn setServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServer").setServer(value);
            }
            fn setServerPort(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServerPort").setServerPort(value);
            }
            fn setServerPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setServerPath").setServerPath(value);
            }
            fn setUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserName").setUserName(value);
            }
            fn setPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPassword").setPassword(value);
            }
            fn setProxyProtocol(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyProtocol").setProxyProtocol(value);
            }
            fn setProxyServer(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyServer").setProxyServer(value);
            }
            fn setProxyPath(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyPath").setProxyPath(value);
            }
            fn setProxyPort(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyPort").setProxyPort(value);
            }
            fn setProxyUserName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyUserName").setProxyUserName(value);
            }
            fn setProxyPassword(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyPassword").setProxyPassword(value);
            }
            fn setTimeout(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeout").setTimeout(value);
            }
            fn setProxyTimeout(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setProxyTimeout").setProxyTimeout(value);
            }
            fn setSpecial1(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial1").setSpecial1(value);
            }
            fn setSpecial2(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial2").setSpecial2(value);
            }
            fn setSpecial3(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial3").setSpecial3(value);
            }
            fn setSpecial4(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial4").setSpecial4(value);
            }
            fn setSpecial5(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial5").setSpecial5(value);
            }
            fn setSpecial6(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial6").setSpecial6(value);
            }
            fn setSpecial7(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial7").setSpecial7(value);
            }
            fn setSpecial8(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial8").setSpecial8(value);
            }
            fn setSpecial9(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial9").setSpecial9(value);
            }
            fn setLastModified(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLastModified").setLastModified(value);
            }
            fn setTimeEntered(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeEntered").setTimeEntered(value);
            }
            fn toHashMap(pointer: *anyopaque, isEncrypted: bool) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "toHashMap").toHashMap(isEncrypted));
            }
            fn toVector(pointer: *anyopaque, isEncrypted: bool) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "toVector").toVector(isEncrypted));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .getEnableFn = Methods.getEnable, .getStoreNameFn = Methods.getStoreName, .getNameFn = Methods.getName, .getPaymentMethodFn = Methods.getPaymentMethod, .getModeFn = Methods.getMode, .getTestProtocolFn = Methods.getTestProtocol, .getTestServerFn = Methods.getTestServer, .getTestPortFn = Methods.getTestPort, .getTestPathFn = Methods.getTestPath, .getServerProtocolFn = Methods.getServerProtocol, .getServerFn = Methods.getServer, .getServerPortFn = Methods.getServerPort, .getServerPathFn = Methods.getServerPath, .getUserNameFn = Methods.getUserName, .getPasswordFn = Methods.getPassword, .getProxyProtocolFn = Methods.getProxyProtocol, .getProxyServerFn = Methods.getProxyServer, .getProxyPathFn = Methods.getProxyPath, .getProxyPortFn = Methods.getProxyPort, .getProxyUserNameFn = Methods.getProxyUserName, .getProxyPasswordFn = Methods.getProxyPassword, .getTimeoutFn = Methods.getTimeout, .getProxyTimeoutFn = Methods.getProxyTimeout, .getSpecial1Fn = Methods.getSpecial1, .getSpecial2Fn = Methods.getSpecial2, .getSpecial3Fn = Methods.getSpecial3, .getSpecial4Fn = Methods.getSpecial4, .getSpecial5Fn = Methods.getSpecial5, .getSpecial6Fn = Methods.getSpecial6, .getSpecial7Fn = Methods.getSpecial7, .getSpecial8Fn = Methods.getSpecial8, .getSpecial9Fn = Methods.getSpecial9, .getLastModifiedFn = Methods.getLastModified, .getTimeEnteredFn = Methods.getTimeEntered, .setEnableFn = Methods.setEnable, .setStoreNameFn = Methods.setStoreName, .setNameFn = Methods.setName, .setPaymentMethodFn = Methods.setPaymentMethod, .setModeFn = Methods.setMode, .setTestProtocolFn = Methods.setTestProtocol, .setTestServerFn = Methods.setTestServer, .setTestPortFn = Methods.setTestPort, .setTestPathFn = Methods.setTestPath, .setServerProtocolFn = Methods.setServerProtocol, .setServerFn = Methods.setServer, .setServerPortFn = Methods.setServerPort, .setServerPathFn = Methods.setServerPath, .setUserNameFn = Methods.setUserName, .setPasswordFn = Methods.setPassword, .setProxyProtocolFn = Methods.setProxyProtocol, .setProxyServerFn = Methods.setProxyServer, .setProxyPathFn = Methods.setProxyPath, .setProxyPortFn = Methods.setProxyPort, .setProxyUserNameFn = Methods.setProxyUserName, .setProxyPasswordFn = Methods.setProxyPassword, .setTimeoutFn = Methods.setTimeout, .setProxyTimeoutFn = Methods.setProxyTimeout, .setSpecial1Fn = Methods.setSpecial1, .setSpecial2Fn = Methods.setSpecial2, .setSpecial3Fn = Methods.setSpecial3, .setSpecial4Fn = Methods.setSpecial4, .setSpecial5Fn = Methods.setSpecial5, .setSpecial6Fn = Methods.setSpecial6, .setSpecial7Fn = Methods.setSpecial7, .setSpecial8Fn = Methods.setSpecial8, .setSpecial9Fn = Methods.setSpecial9, .setLastModifiedFn = Methods.setLastModified, .setTimeEnteredFn = Methods.setTimeEntered, .toHashMapFn = Methods.toHashMap, .toVectorFn = Methods.toVector };
        return this;
    }
};

