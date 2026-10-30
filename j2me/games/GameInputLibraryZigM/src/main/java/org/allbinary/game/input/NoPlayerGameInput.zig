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
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;

pub const NoPlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.NoPlayerGameInput";
    base: PlayerGameInput = undefined,
    var SINGLETON: ?*NoPlayerGameInput = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NoPlayerGameInput.create();
    }
    

    pub fn getInstance() ?*NoPlayerGameInput {
        return Inheritance.upcast(?*NoPlayerGameInput, NoPlayerGameInput.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ BasicArrayListD.create(), BasicArrayListD.create(), -1 }).*;
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
};

