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
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInputProcessor";
    var instance: ?*GameInputProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameInputProcessor.create();
    }
    

    pub fn getInstance() ?*GameInputProcessor {
        return Inheritance.upcast(?*GameInputProcessor, GameInputProcessor.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = allbinaryLayerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn processReleasedEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = allbinaryLayerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn processAnalog(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent, analogValue: i32) void {
        _ = allbinaryLayerManager;
        _ = gameKeyEvent;
        _ = analogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn process(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, keyAsInteger: ?*Integer) void {
        _ = allbinaryLayerManager;
        _ = keyAsInteger;
        _ = self;
    }
    

    // throws Exception
    pub fn processReleased(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, keyAsInteger: ?*Integer) void {
        _ = allbinaryLayerManager;
        _ = keyAsInteger;
        _ = self;
    }
};

