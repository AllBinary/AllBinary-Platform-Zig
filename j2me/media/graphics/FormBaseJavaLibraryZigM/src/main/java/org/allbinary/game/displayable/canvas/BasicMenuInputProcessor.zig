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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const BaseMotionGestureEventListener = @import("org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.zig").BaseMotionGestureEventListener;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const BasicMenuInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BasicMenuInputProcessor";
    base: PlayerGameInput = undefined,
    motionGestureEventList: ?*BasicArrayList = null,
    canvas: ?*Canvas = null,
    // Implements BaseMotionGestureEventListener

    fn initFields(this: *Self) void {
        this.motionGestureEventList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.canvas = Inheritance.upcast(?*Canvas, NullCanvas.NULL_CANVAS);
    }
    

    pub fn create3(gameKeyEventList: ?*BasicArrayList, playerInputId: i32, gameCanvas: ?*Canvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ gameKeyEventList, BasicArrayListD.create(), playerInputId }).*;
        this.initFields();
        this.canvas = gameCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = Inheritance.call(self.motionGestureEventList.?, "add", .{ motionGestureEvent });
    }
    

    pub fn onScrolledMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = motionGestureEvent;
        _ = self;
    }
    

    pub fn setCanvas(self: *Self, canvas: ?*MyCanvas) void {
        self.canvas = canvas;
    }
    

    pub fn getCanvas(self: *Self) ?*MyCanvas {
        return Inheritance.cast(?*MyCanvas, self.canvas);
    }
    

    // throws Exception
    pub fn processInputList(self: *Self) i32 {
        _ = self;
        return -1;
    }
};

