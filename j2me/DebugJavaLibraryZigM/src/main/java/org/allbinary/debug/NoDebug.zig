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
// package org.allbinary.debug

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DebugInterface = @import("org/allbinary/debug/DebugInterface.zig").DebugInterface;

pub const NoDebug = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.debug.NoDebug";
    pub const java_interfaces = .{ DebugInterface };
    // Implements DebugInterface
    var SINGLETON: ?*DebugInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.upcast(?*DebugInterface, NoDebug.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DebugInterface {
        return Inheritance.upcast(?*DebugInterface, NoDebug.SINGLETON);
    }
    

    pub fn start(self: *Self) void {
        _ = self;
    }
    

    pub fn stop(self: *Self) void {
        _ = self;
    }
    

    pub fn getMaxTime(self: *Self) i64 {
        _ = self;
        return 10000;
    }
    

    pub fn getStartTime(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn isRunning(self: *Self) bool {
        _ = self;
        return false;
    }
};

