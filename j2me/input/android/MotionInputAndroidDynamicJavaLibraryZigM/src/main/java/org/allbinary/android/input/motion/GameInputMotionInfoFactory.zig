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
const GameInputMotionInfoAPI1 = @import("org/allbinary/android/input/motion/api1/GameInputMotionInfoAPI1.zig").GameInputMotionInfoAPI1;
const GameInputMotionInfoAPI5 = @import("org/allbinary/android/input/motion/api5/GameInputMotionInfoAPI5.zig").GameInputMotionInfoAPI5;
const GameInputMotionInfo = @import("org/allbinary/android/input/motion/GameInputMotionInfo.zig").GameInputMotionInfo;

pub const GameInputMotionInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.GameInputMotionInfoFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*GameInputMotionInfo {
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION <= 4) {
            return Inheritance.upcast(?*GameInputMotionInfo, GameInputMotionInfoAPI1.getInstance());
        } else {
            return Inheritance.upcast(?*GameInputMotionInfo, GameInputMotionInfoAPI5.getInstance());
        }
    }
};

