// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const ABRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ABRunnable";
    pub const java_interfaces = .{ RunnableInterface };
    running: bool = false,
    // Implements RunnableInterface

    fn initFields(this: *Self) void {
        this.running = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setThread(self: *Self, thread: ?*Thread) void {
        _ = thread;
        _ = self;
    }
    

    pub fn isRunning(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.running;
    }
    

    pub fn setRunning(self: *Self, running: bool) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.running = running;
    }
    

    pub fn run(self: *Self) void {
        _ = self;
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return -1;
    }
};

