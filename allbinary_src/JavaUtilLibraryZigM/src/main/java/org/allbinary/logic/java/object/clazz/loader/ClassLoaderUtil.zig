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
// package org.allbinary.logic.java.anyType.clazz.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ClassLoaderUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.anyType.clazz.loader.ClassLoaderUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getName(anyType: ?Object) ?*String {
        const classLoader: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?, "getClassLoader").getClassLoader());
        if (classLoader != null) {
            return Inheritance.upcast(?*String, String.plus(String.literal("ClassLoader: "), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(classLoader).?.class))).?))).name)));
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to get ClassLoader"); break :exception error.Exception; }});
    }
};

