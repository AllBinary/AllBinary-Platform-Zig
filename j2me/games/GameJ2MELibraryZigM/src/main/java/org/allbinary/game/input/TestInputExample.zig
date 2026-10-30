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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const TestInputInterface = @import("org/allbinary/game/input/TestInputInterface.zig").TestInputInterface;

pub const TestInputExample = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.TestInputExample";
    pub const java_interfaces = .{ TestInputInterface };
    testValue: i32 = 0,
    // Implements TestInputInterface

    fn initFields(this: *Self) void {
        this.testValue = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn up(self: *Self) void {
        _ = self;
    }
    

    pub fn down(self: *Self) void {
        _ = self;
    }
    

    pub fn left(self: *Self) void {
        self.testValue += 1;
    }
    

    pub fn right(self: *Self) void {
        self.testValue -= 1;
    }
    

    pub fn strafeLeft(self: *Self) void {
        _ = self;
    }
    

    pub fn strafeRight(self: *Self) void {
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

