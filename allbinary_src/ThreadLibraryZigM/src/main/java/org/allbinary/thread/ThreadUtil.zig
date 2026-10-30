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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ThreadUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ThreadUtil";
    logUtil: ?*LogUtil = null,
    JOIN: ?*String = null,
    var instance: ?*ThreadUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThreadUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.JOIN = String.literal("join");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ThreadUtil {
        return Inheritance.upcast(?*ThreadUtil, ThreadUtil.instance);
    }
    

    pub fn isRunning(self: *Self, thread: ?*Thread) bool {
        _ = self;
        if (thread != null and thread.?.isAlive()) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn join(self: *Self, thread: ?*Thread) void {
        if (Inheritance.call(ThreadUtil.getInstance().?, "isRunning", .{ thread })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Waiting for Thread To Join/End"), self, self.JOIN });
            _ = thread.?.join();
        }
    }
};

