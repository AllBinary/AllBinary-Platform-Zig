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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameFeature = @import("org/allbinary/game/configuration/feature/GameFeature.zig").GameFeature;

pub const RaceTrackGameFeature = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGameFeature";
    base: GameFeature = undefined,
    pub var MINI_MAP: ?*GameFeature = undefined;
    pub var AUTO_FINISH_AI: ?*GameFeature = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MINI_MAP = Inheritance.upcast(?*GameFeature, Inheritance.callStatic(RaceTrackGameFeature, "create1", .{ String.literal("Mini Map") }));
        AUTO_FINISH_AI = Inheritance.upcast(?*GameFeature, Inheritance.callStatic(RaceTrackGameFeature, "create1", .{ String.literal("Auto Finish AI") }));
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GameFeature, "create1", .{ name }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

