// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const System = @import("java/lang/System.zig").System;

pub const ABSystemWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.ABSystemWrapper";
    var instance: ?*ABSystemWrapper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ABSystemWrapper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ABSystemWrapper {
        return Inheritance.upcast(?*ABSystemWrapper, ABSystemWrapper.instance);
    }
    

    pub fn arraycopy(self: *Self, src: anytype, srcPos: i32, dest: anytype, destPos: i32, length: i32) void {
        _ = self;
        _ = @memmove(dest[@intCast(destPos)..@intCast(destPos + length)], src[@intCast(srcPos)..@intCast(srcPos + length)]);
    }
    

    pub fn currentTimeMillis(self: *Self) i64 {
        _ = self;
        return std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds();
    }
};

