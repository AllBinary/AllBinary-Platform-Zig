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
// package org.allbinary.android.api1

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ActivityFractureUtil = @import("org/allbinary/android/ActivityFractureUtil.zig").ActivityFractureUtil;
const Activity = @import("android/app/Activity.zig").Activity;
const WindowManager = @import("android/view/WindowManager.zig").WindowManager;

pub const ActivityFractureUtilAPI1 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.api1.ActivityFractureUtilAPI1";
    base: ActivityFractureUtil = undefined,
    var instance: ?*ActivityFractureUtilAPI1 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ActivityFractureUtilAPI1.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ActivityFractureUtil.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ActivityFractureUtilAPI1 {
        return Inheritance.upcast(?*ActivityFractureUtilAPI1, ActivityFractureUtilAPI1.instance);
    }
    

    // throws Exception
    pub fn process(self: *Self, activity: ?*Activity) void {
        _ = activity;
        _ = self;
    }
    

    pub fn setFullScreen(self: *Self, activity: ?*Activity) void {
        _ = self;
        _ = Inheritance.call(activity.?.getWindow().?, "setFlags", .{ WindowManager.LayoutParams.?.FLAG_FULLSCREEN, WindowManager.LayoutParams.?.FLAG_FULLSCREEN });
    }
};

