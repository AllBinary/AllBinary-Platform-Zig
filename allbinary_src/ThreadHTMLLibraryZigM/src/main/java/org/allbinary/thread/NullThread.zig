// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const NullThread = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.NullThread";
    pub var NULL_THREAD: ?*Thread = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_THREAD = Inheritance.callStatic(Thread, "create2", .{ NullRunnable.getInstance(), StringUtil.getInstance().?.EMPTY_STRING });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};

