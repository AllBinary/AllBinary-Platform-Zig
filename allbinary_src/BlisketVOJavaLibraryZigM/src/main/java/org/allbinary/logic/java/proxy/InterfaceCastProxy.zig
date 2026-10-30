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
// package org.allbinary.logic.java.proxy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
// const Proxy = @import("java/lang/reflect/Proxy.zig").Proxy;

pub const InterfaceCastProxy = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.proxy.InterfaceCastProxy";
    anyType: ?Object = null,
    // Implements InvocationHandler

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.anyType = anyType;
        return this;
    }
    

    pub fn newInstance(anyType: ?Object) ?Object {
        return Inheritance.upcast(?Object, Inheritance.callStatic(Proxy, "newProxyInstance", .{ Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getClassLoader").getClassLoader(), Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getInterfaces").getInterfaces(), Inheritance.callStatic(InterfaceCastProxy, "create1", .{ anyType }) }));
    }
    

    // throws Throwable
    pub fn invoke(self: *Self, proxyObject: ?Object, proxyMethod: ?*Method, proxyArgs: []?Object) ?Object {
        _ = proxyObject;
        const methodName: ?*String = Inheritance.upcast(?*String, proxyMethod.?.getName());
        const realMethod: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))).?, "getMethod", .{ methodName, proxyMethod.?.getParameterTypes() }));
        if (!realMethod.?.isAccessible()) {
            _ = Inheritance.call(realMethod.?, "setAccessible", .{ true });
        }
        return Inheritance.upcast(?Object, Inheritance.call(proxyMethod.?, "invoke", .{ self.anyType, proxyArgs }));
    }
};

