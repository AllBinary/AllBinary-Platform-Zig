// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
const RTSPlayerGameInput = @import("org/allbinary/game/input/RTSPlayerGameInput.zig").RTSPlayerGameInput;
const RTSPlayerGameInputProcessor = @import("org/allbinary/game/input/RTSPlayerGameInputProcessor.zig").RTSPlayerGameInputProcessor;

pub const RTSPlayerLeftGameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.RTSPlayerLeftGameInputProcessor";
    base: RTSPlayerGameInputProcessor = undefined,
    

    pub fn create1(rtsPlayerGameInput: ?*RTSPlayerGameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSPlayerGameInputProcessor, "create1", .{ rtsPlayerGameInput }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = allbinaryLayerManager;
        _ = gameKeyEvent;
        _ = Inheritance.receiver(Inheritance.fieldPointer(self, "rtsPlayerGameInput").*.?, "left").left();
    }
};

