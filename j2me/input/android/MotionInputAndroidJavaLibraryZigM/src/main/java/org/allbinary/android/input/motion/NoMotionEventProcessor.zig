//
// AllBinary Open License Version 1
// Copyright (c) 2009 AllBinary
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
// package org.allbinary.android.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MotionEventProcessor = @import("org/allbinary/android/input/motion/MotionEventProcessor.zig").MotionEventProcessor;

pub const NoMotionEventProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.NoMotionEventProcessor";
    base: MotionEventProcessor = undefined,
    pub var SINGLETON: ?*MotionEventProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = MotionEventProcessor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionEventProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*MotionEventProcessor {
        return Inheritance.upcast(?*MotionEventProcessor, NoMotionEventProcessor.SINGLETON);
    }
};

