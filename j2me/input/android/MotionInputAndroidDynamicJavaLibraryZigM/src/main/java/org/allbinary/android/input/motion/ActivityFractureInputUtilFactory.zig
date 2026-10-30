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
const ActivityFractureUtil = @import("org/allbinary/android/ActivityFractureUtil.zig").ActivityFractureUtil;
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const ActivityFractureUtilAPI1 = @import("org/allbinary/android/api1/ActivityFractureUtilAPI1.zig").ActivityFractureUtilAPI1;
const ActivityFractureUtilAPI16 = @import("org/allbinary/android/api16/ActivityFractureUtilAPI16.zig").ActivityFractureUtilAPI16;
const ActivityFractureUtilAPI19 = @import("org/allbinary/android/api19/ActivityFractureUtilAPI19.zig").ActivityFractureUtilAPI19;
const ActivityFractureUtilAPI5 = @import("org/allbinary/android/api5/ActivityFractureUtilAPI5.zig").ActivityFractureUtilAPI5;

pub const ActivityFractureInputUtilFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.motion.ActivityFractureInputUtilFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ActivityFractureUtil {
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION <= 4) {
            return Inheritance.upcast(?*ActivityFractureUtil, ActivityFractureUtilAPI1.getInstance());
        } else if (SDK_VERSION <= 15) {
            return Inheritance.upcast(?*ActivityFractureUtil, ActivityFractureUtilAPI5.getInstance());
        } else if (SDK_VERSION <= 16) {
            return Inheritance.upcast(?*ActivityFractureUtil, ActivityFractureUtilAPI16.getInstance());
        } else {
            return Inheritance.upcast(?*ActivityFractureUtil, ActivityFractureUtilAPI19.getInstance());
        }
    }
};

