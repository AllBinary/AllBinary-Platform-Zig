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
// package org.allbinary.android.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AndroidInfoFactory = @import("org/allbinary/android/AndroidInfoFactory.zig").AndroidInfoFactory;
const VirtualKeyboardAPI1 = @import("org/allbinary/android/input/api1/VirtualKeyboardAPI1.zig").VirtualKeyboardAPI1;
const VirtualKeyboardAPI3 = @import("org/allbinary/android/input/api3/VirtualKeyboardAPI3.zig").VirtualKeyboardAPI3;
const Activity = @import("android/app/Activity.zig").Activity;
const VirtualKeyboard = @import("org/allbinary/android/input/VirtualKeyboard.zig").VirtualKeyboard;

pub const VirtualKeyboardFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.VirtualKeyboardFactory";
    var virtualKeyboard: ?*VirtualKeyboard = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        virtualKeyboard = Inheritance.upcast(?*VirtualKeyboard, VirtualKeyboard.NULL_VIRTUAL_KEYBOARD);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(activity: ?*Activity) void {
        const SDK_VERSION: i32 = Inheritance.receiverOf(AndroidInfoFactory.getInstance().?, "getVersion").getVersion();
        if (SDK_VERSION <= 2) {
            VirtualKeyboardFactory.virtualKeyboard = Inheritance.upcast(@TypeOf(VirtualKeyboardFactory.virtualKeyboard), Inheritance.callStatic(VirtualKeyboardAPI1, "create1", .{ activity }));
        } else {
            VirtualKeyboardFactory.virtualKeyboard = Inheritance.upcast(@TypeOf(VirtualKeyboardFactory.virtualKeyboard), Inheritance.callStatic(VirtualKeyboardAPI3, "create1", .{ activity }));
        }
    }
    

    pub fn getInstance() ?*VirtualKeyboard {
        return Inheritance.upcast(?*VirtualKeyboard, VirtualKeyboardFactory.virtualKeyboard);
    }
};

