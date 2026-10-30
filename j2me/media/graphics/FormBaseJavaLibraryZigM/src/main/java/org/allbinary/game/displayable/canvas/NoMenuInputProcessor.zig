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
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;

pub const NoMenuInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.NoMenuInputProcessor";
    base: BasicMenuInputProcessor = undefined,
    var SINGLETON: ?*NoMenuInputProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NoMenuInputProcessor.create();
    }
    

    pub fn getInstance() ?*NoMenuInputProcessor {
        return Inheritance.upcast(?*NoMenuInputProcessor, NoMenuInputProcessor.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicMenuInputProcessor, "create3", .{ Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance(), -1, NullCanvas.NULL_CANVAS }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onDownGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        _ = gameKeyEvent;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn onUpGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        _ = gameKeyEvent;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn onMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = motionGestureEvent;
        _ = self;
    }
};

