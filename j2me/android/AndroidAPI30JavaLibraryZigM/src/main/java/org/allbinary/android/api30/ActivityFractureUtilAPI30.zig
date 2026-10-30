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
// package org.allbinary.android.api30

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const Window = @import("android/view/Window.zig").Window;
const WindowCompat = @import("androidx/core/view/WindowCompat.zig").WindowCompat;
const WindowInsetsCompat = @import("androidx/core/view/WindowInsetsCompat.zig").WindowInsetsCompat;
const WindowInsetsControllerCompat = @import("androidx/core/view/WindowInsetsControllerCompat.zig").WindowInsetsControllerCompat;
const ActivityFractureUtilAPI5 = @import("org/allbinary/android/api5/ActivityFractureUtilAPI5.zig").ActivityFractureUtilAPI5;

pub const ActivityFractureUtilAPI30 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.api30.ActivityFractureUtilAPI30";
    base: ActivityFractureUtilAPI5 = undefined,
    var instance30: ?*ActivityFractureUtilAPI30 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance30 = ActivityFractureUtilAPI30.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ActivityFractureUtilAPI5.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ActivityFractureUtilAPI30 {
        return Inheritance.upcast(?*ActivityFractureUtilAPI30, ActivityFractureUtilAPI30.instance30);
    }
    

    pub fn setFullScreen(self: *Self, activity: ?*Activity) void {
        _ = self;
        const window: ?*Window = Inheritance.upcast(?*Window, activity.?.getWindow());
        const windowInsetsController: ?*WindowInsetsControllerCompat = Inheritance.upcast(?*WindowInsetsControllerCompat, Inheritance.callStatic(WindowCompat, "getInsetsController", .{ window, window.?.getDecorView() }));
        _ = Inheritance.call(windowInsetsController.?, "hide", .{ Inheritance.receiverOf(WindowInsetsCompat.Type.?, "systemBars").systemBars() });
        _ = Inheritance.call(windowInsetsController.?, "setSystemBarsBehavior", .{ WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE });
    }
};

