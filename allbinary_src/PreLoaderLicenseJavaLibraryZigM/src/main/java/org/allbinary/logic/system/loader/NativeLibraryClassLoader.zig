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

pub const NativeLibraryClassLoader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.NativeLibraryClassLoader";
    base: ClassLoader = undefined,
    message: ?*String = null,

    fn initFields(this: *Self) void {
        this.message = String.literal("This Class Loader Does Not Load Classes - Only For Loading and Unloading of Native Libraries");
    }
    

    pub fn create1(parent: ?*ClassLoader) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ClassLoader, "create1", .{ parent }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
};

