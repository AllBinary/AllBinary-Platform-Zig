// Generated Code Do Not Modify
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullPriorityRunnable = @import("org/allbinary/thread/NullPriorityRunnable.zig").NullPriorityRunnable;
const PriorityRunnable = @import("org/allbinary/thread/PriorityRunnable.zig").PriorityRunnable;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ThreadObjectUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ThreadObjectUtil";
    NULL_PRIORITY_RUNNABLE: ?*PriorityRunnable = null,
    var instance: ?*ThreadObjectUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThreadObjectUtil.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_PRIORITY_RUNNABLE = Inheritance.upcast(?*PriorityRunnable, NullPriorityRunnable.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ThreadObjectUtil {
        return Inheritance.upcast(?*ThreadObjectUtil, ThreadObjectUtil.instance);
    }
    

    pub fn notifyObject(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    // throws Exception
    pub fn waitObject(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    // throws Exception
    pub fn waitObjectFor(self: *Self, anyType: ?Object, delay: i64) void {
        _ = anyType;
        _ = delay;
        _ = self;
    }
    

    pub fn processThread(self: *Self, runnable: ?*Runnable) void {
        _ = self;
        _ = runnable.?.run();
    }
};

