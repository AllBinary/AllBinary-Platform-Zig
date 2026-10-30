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
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const GameInputMotionEventProcessorAPI1 = @import("org/allbinary/android/input/motion/api1/GameInputMotionEventProcessorAPI1.zig").GameInputMotionEventProcessorAPI1;
const GameInputMotionEventProcessorAPI5 = @import("org/allbinary/android/input/motion/api5/GameInputMotionEventProcessorAPI5.zig").GameInputMotionEventProcessorAPI5;
const BaseGameInputMotionEventProcessor = @import("org/allbinary/android/input/motion/BaseGameInputMotionEventProcessor.zig").BaseGameInputMotionEventProcessor;

pub const GameInputMotionEventProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*BaseGameInputMotionEventProcessor {
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION <= 4) {
            return Inheritance.upcast(?*BaseGameInputMotionEventProcessor, GameInputMotionEventProcessorAPI1.getInstance());
        } else {
            return Inheritance.upcast(?*BaseGameInputMotionEventProcessor, GameInputMotionEventProcessorAPI5.getInstance());
        }
    }
};

