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
const TouchButtonRecognizer = @import("org/allbinary/input/motion/button/TouchButtonRecognizer.zig").TouchButtonRecognizer;
const MotionRecognizer = @import("org/allbinary/input/motion/MotionRecognizer.zig").MotionRecognizer;

pub const OnlyTouchButtonRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.OnlyTouchButtonRecognizer";
    base: MotionRecognizer = undefined,
    touchButtonRecognizer: ?*TouchButtonRecognizer = null,
    touchButtonProcessing: bool = false,

    fn initFields(this: *Self) void {
        
        this.touchButtonProcessing = false;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MotionRecognizer.create().*;
        this.initFields();
        this.touchButtonRecognizer = TouchButtonRecognizer.create();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processStartMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = modifiers;
        if (Inheritance.call(self.touchButtonRecognizer.?, "pressTouchButtonInput", .{ x, y, deviceId })) {
            self.touchButtonProcessing = true;
        }
    }
    

    // throws Exception
    pub fn processEndMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = modifiers;
        if (self.touchButtonProcessing) {
            self.touchButtonProcessing = false;
        }
        if (Inheritance.call(self.touchButtonRecognizer.?, "releaseTouchButtonInput", .{ x, y, deviceId })) {
            return;
        }
    }
    

    // throws Exception
    pub fn processDraggedMotionEvent(self: *Self, x: i32, y: i32, deviceId: i32, modifiers: i32) void {
        _ = modifiers;
        if (self.touchButtonProcessing) {
            _ = Inheritance.call(self.touchButtonRecognizer.?, "pressTouchButtonInput", .{ x, y, deviceId });
        }
    }
};

