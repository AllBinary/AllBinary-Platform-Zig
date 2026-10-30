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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const GameRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameRunnable";
    pub const java_interfaces = .{ Runnable };
    WAIT: i32 = 0,
    FAST: i32 = 0,
    waitInMillis: i64 = 0,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.WAIT = 240;
        this.FAST = 60;
        this.waitInMillis = @as(i64, @intCast(this.WAIT));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn run(self: *Self) void {
        _ = self;
        _ = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "process").process();
    }
    

    // throws Exception
    pub fn processLoopSleep(self: *Self) void {
        _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(self.waitInMillis), .awake) catch {});
    }
};

