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
// package org.allbinary.android.input.api1

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const VirtualKeyboard = @import("org/allbinary/android/input/VirtualKeyboard.zig").VirtualKeyboard;
const VirtualKeyboardEventListenerInterface = @import("org/allbinary/input/event/VirtualKeyboardEventListenerInterface.zig").VirtualKeyboardEventListenerInterface;
const Activity = @import("android/app/Activity.zig").Activity;

pub const VirtualKeyboardAPI1 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.input.api1.VirtualKeyboardAPI1";
    base: VirtualKeyboard = undefined,
    // Implements VirtualKeyboardEventListenerInterface
    pub var MIN_API: i32 = 1;
    pub var MAX_API: i32 = 2;
    

    pub fn create1(activity: ?*Activity) *Self {
        _ = activity;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = VirtualKeyboard.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

