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
// package org.allbinary.game.physics.acceleration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicAccelerationProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.physics.acceleration.BasicAccelerationProperties";
    forward: i32 = 0,
    reverse: i32 = 0,

    fn initFields(this: *Self) void {
        this.forward = 0;
        this.reverse = 0;
    }
    

    pub fn create2(forward: i32, reverse: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setForward", .{ forward });
        _ = Inheritance.call(this, "setReverse", .{ reverse });
        return this;
    }
    

    pub fn setReverse(self: *Self, reverse: i32) void {
        self.reverse = reverse;
    }
    

    pub fn getReverse(self: *Self) i32 {
        return self.reverse;
    }
    

    pub fn setForward(self: *Self, forward: i32) void {
        self.forward = forward;
    }
    

    pub fn getForward(self: *Self) i32 {
        return self.forward;
    }
};

