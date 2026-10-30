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
const ProgressActivityInterface = @import("org/allbinary/android/activity/ProgressActivityInterface.zig").ProgressActivityInterface;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const NullProgressActivity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.NullProgressActivity";
    pub const java_interfaces = .{ ProgressActivityInterface };
    // Implements ProgressActivityInterface
    pub var NULL_PROGRESS_ACTIVITY: ?*NullProgressActivity = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PROGRESS_ACTIVITY = NullProgressActivity.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn runOnUiThread(self: *Self, action: ?*Runnable) void {
        _ = action;
        _ = self;
    }
    

    pub fn onDismissTitleProgressBar(self: *Self) void {
        _ = self;
    }
    

    pub fn onShowTitleProgressBar(self: *Self, value: i32, indeterminate: bool) void {
        _ = value;
        _ = indeterminate;
        _ = self;
    }
    

    pub fn onTitleProgressBarSetProgress(self: *Self, value: i32) void {
        _ = value;
        _ = self;
    }
};

