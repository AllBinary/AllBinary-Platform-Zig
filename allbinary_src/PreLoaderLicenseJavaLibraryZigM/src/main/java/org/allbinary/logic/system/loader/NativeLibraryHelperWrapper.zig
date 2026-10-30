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
// package org.allbinary.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Constructor = @import("java/lang/reflect/Constructor.zig").Constructor;
// const Method = @import("java/lang/reflect/Method.zig").Method;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NativeLibraryClassLoader = @import("org/allbinary/logic/system/loader/NativeLibraryClassLoader.zig").NativeLibraryClassLoader;
const System = @import("java/lang/System.zig").System;

pub const NativeLibraryHelperWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.NativeLibraryHelperWrapper";
    libraryName: ?*String = null,
    loader: ?*ClassLoader = null,
    anyType: ?Object = null,

    fn initFields(this: *Self) void {
        this.libraryName = null;
        this.loader = null;
        this.anyType = null;
    }
    

    pub fn create1(libraryName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setLibraryName", .{ libraryName });
        return this;
    }
    

    // throws Exception
    pub fn load(self: *Self) void {
        const params: []?Object = array_N65840: { const array_N65840_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N65840_array, null); break :array_N65840 array_N65840_array; };
        params[@intCast(0)] = Inheritance.upcast(@TypeOf(params[@intCast(0)]), self.getLibraryName());
        const classes: []?*anyopaque = array_N65931: { const array_N65931_array = allocator.alloc(?*anyopaque, @intCast(1)) catch unreachable; @memset(array_N65931_array, null); break :array_N65931 array_N65931_array; };
        classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.getLibraryName()).?.class))));
        self.loader = Inheritance.upcast(@TypeOf(self.loader), Inheritance.callStatic(NativeLibraryClassLoader, "create1", .{ Inheritance.receiverOf(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?, "getClassLoader").getClassLoader() }));
        const myClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(self.loader.?, "loadClass", .{ String.literal("dynamic.NativeLibraryHelper") }));
        const constructor: ?*Constructor = Inheritance.upcast(?*Constructor, Inheritance.call(myClass.?, "getConstructor", .{ classes }));
        self.anyType = Inheritance.upcast(@TypeOf(self.anyType), Inheritance.call(constructor.?, "newInstance", .{ params }));
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))).?, "getMethod", .{ commonStrings.?.LOAD, null }));
        _ = Inheritance.call(method.?, "invoke", .{ self.anyType, null });
    }
    

    pub fn unload(self: *Self) void {
        self.anyType = null;
        self.loader = null;
        _ = {};
        _ = {};
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("Library: "), self.getLibraryName()));
    }
    

    pub fn getLibraryName(self: *Self) ?*String {
        return self.libraryName;
    }
    

    pub fn setLibraryName(self: *Self, libraryName: ?*String) void {
        self.libraryName = libraryName;
    }
};

