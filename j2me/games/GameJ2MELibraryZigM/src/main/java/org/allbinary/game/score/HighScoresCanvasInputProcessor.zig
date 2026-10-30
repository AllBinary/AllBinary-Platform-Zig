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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const HighScoresCanvasInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresCanvasInputProcessor";
    base: PlayerGameInput = undefined,
    highScoresCanvas: ?*HighScoresCanvas = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(highScoresCanvas: ?*HighScoresCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ BasicArrayListD.create(), BasicArrayListD.create(), -1 }).*;
        this.initFields();
        this.highScoresCanvas = highScoresCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn open(self: *Self) void {
        _ = self;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
    

    pub fn onPressGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "onPressGameKeyEvent", .{ gameKeyEvent });
        _ = Inheritance.receiver(self, "update").update();
    }
    

    pub fn onDownGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "onDownGameKeyEvent", .{ gameKeyEvent });
        _ = Inheritance.receiver(self, "update").update();
    }
    

    pub fn onUpGameKeyEvent(self: *Self, gameKeyEvent: ?*GameKeyEvent) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "onUpGameKeyEvent", .{ gameKeyEvent });
        _ = Inheritance.receiver(self, "update").update();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getHighScoresCanvas(self: *Self) ?*HighScoresCanvas {
        return self.highScoresCanvas;
    }
};

