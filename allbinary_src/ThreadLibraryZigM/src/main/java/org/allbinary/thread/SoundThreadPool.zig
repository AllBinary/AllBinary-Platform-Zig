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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ThreadPool = @import("org/allbinary/thread/ThreadPool.zig").ThreadPool;

pub const SoundThreadPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.SoundThreadPool";
    var instance: ?*ThreadPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.callStatic(ThreadPool, "create3", .{ String.literal("Sound"), 1, ThreadPool.NORMAL_PRIORITY });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ThreadPool {
        return Inheritance.upcast(?*ThreadPool, SoundThreadPool.instance);
    }
};

