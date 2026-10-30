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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;

pub const InputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.InputProcessor";
    gameInputStrings: ?*GameInputStrings = null,

    fn initFields(this: *Self) void {
        this.gameInputStrings = Inheritance.upcast(?*GameInputStrings, GameInputStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
    

    pub fn keyReleasedByDevice(self: *Self, canvas: ?*Canvas, keyCode: i32, deviceId: i32) void {
        _ = canvas;
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
};

