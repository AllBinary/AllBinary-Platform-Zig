// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.android.activity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const View = @import("android/view/View.zig").View;
const KeyInputViewCompositeInterface = @import("org/allbinary/android/activity/KeyInputViewCompositeInterface.zig").KeyInputViewCompositeInterface;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const NullKeyInputViewComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.NullKeyInputViewComposite";
    pub const java_interfaces = .{ KeyInputViewCompositeInterface };
    // Implements KeyInputViewCompositeInterface
    pub var NULL_KEY_INPUT_VIEW_COMPOSITE: ?*NullKeyInputViewComposite = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_KEY_INPUT_VIEW_COMPOSITE = NullKeyInputViewComposite.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn setKeyInputView(self: *Self, keyInputView: ?*View) void {
        _ = keyInputView;
        _ = self;
    }
    

    pub fn getRootView(self: *Self) ?*View {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getView(self: *Self) ?*View {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn runOnUiThread(self: *Self, action: ?*Runnable) void {
        _ = action;
        _ = self;
    }
};

