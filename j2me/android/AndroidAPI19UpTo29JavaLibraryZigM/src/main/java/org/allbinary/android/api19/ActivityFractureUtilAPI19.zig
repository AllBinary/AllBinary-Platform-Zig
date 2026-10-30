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
// package org.allbinary.android.api19

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const View = @import("android/view/View.zig").View;
const ActivityFractureUtilAPI5 = @import("org/allbinary/android/api5/ActivityFractureUtilAPI5.zig").ActivityFractureUtilAPI5;

pub const ActivityFractureUtilAPI19 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.api19.ActivityFractureUtilAPI19";
    base: ActivityFractureUtilAPI5 = undefined,
    var instance19: ?*ActivityFractureUtilAPI19 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance19 = ActivityFractureUtilAPI19.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ActivityFractureUtilAPI5.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ActivityFractureUtilAPI19 {
        return Inheritance.upcast(?*ActivityFractureUtilAPI19, ActivityFractureUtilAPI19.instance19);
    }
    

    pub fn setFullScreen(self: *Self, activity: ?*Activity) void {
        _ = self;
        const decorView: ?*View = Inheritance.upcast(?*View, Inheritance.receiverOf(activity.?.getWindow().?, "getDecorView").getDecorView());
        const visibility: i32 = View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_FULLSCREEN;
        _ = Inheritance.call(decorView.?, "setSystemUiVisibility", .{ visibility });
    }
};

