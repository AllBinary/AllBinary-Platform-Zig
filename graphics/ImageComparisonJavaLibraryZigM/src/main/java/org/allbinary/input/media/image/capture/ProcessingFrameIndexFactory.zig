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
// package org.allbinary.input.media.image.capture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ProcessingFrameIndexFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory";
    var currentFrame: i64 = 0;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn next() i64 {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        return value_N65653: { const value_N65653_value = ProcessingFrameIndexFactory.currentFrame; ProcessingFrameIndexFactory.currentFrame += 1; break :value_N65653 value_N65653_value; };
    }
};

