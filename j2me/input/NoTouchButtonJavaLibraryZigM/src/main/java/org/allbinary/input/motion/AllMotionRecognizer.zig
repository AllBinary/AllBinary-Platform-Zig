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
// package org.allbinary.input.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const AllMotionRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.AllMotionRecognizer";
    id: i32 = 0,
    var index: i32 = 0;

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = value_N65674: { const value_N65674_value = AllMotionRecognizer.index; AllMotionRecognizer.index += 1; break :value_N65674 value_N65674_value; };
        return this;
    }
    

    // throws Exception
    pub fn processStartMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = x;
        _ = y;
        _ = deviceId;
        _ = modifiers;
        _ = self;
    }
    

    // throws Exception
    pub fn processEndMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = x;
        _ = y;
        _ = deviceId;
        _ = modifiers;
        _ = self;
    }
    

    // throws Exception
    pub fn processDraggedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = x;
        _ = y;
        _ = deviceId;
        _ = modifiers;
        _ = self;
    }
    

    // throws Exception
    pub fn processMovedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = x;
        _ = y;
        _ = deviceId;
        _ = modifiers;
        _ = self;
    }
    

    // throws Exception
    pub fn processScrolledMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = x;
        _ = y;
        _ = deviceId;
        _ = modifiers;
        _ = self;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
};

