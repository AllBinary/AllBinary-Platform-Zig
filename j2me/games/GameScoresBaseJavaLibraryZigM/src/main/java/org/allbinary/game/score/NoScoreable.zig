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
const Scoreable = @import("org/allbinary/game/score/Scoreable.zig").Scoreable;

pub const NoScoreable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.NoScoreable";
    base: Scoreable = undefined,
    var SINGLETON: ?*NoScoreable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NoScoreable.create();
    }
    

    pub fn getInstance() ?*NoScoreable {
        return Inheritance.upcast(?*NoScoreable, NoScoreable.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Scoreable, "create1", .{ 0 }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addPoints(self: *Self, points: i32) void {
        _ = points;
        _ = self;
    }
    

    pub fn removePoints(self: *Self, points: i32) void {
        _ = points;
        _ = self;
    }
};

