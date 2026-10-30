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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DemoGameMidletState = @import("org/allbinary/game/midlet/DemoGameMidletState.zig").DemoGameMidletState;

pub const DemoGameMidletStateFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.DemoGameMidletStateFactory";
    NONE: ?*DemoGameMidletState = null,
    START_DEMO: ?*DemoGameMidletState = null,
    START_GAME: ?*DemoGameMidletState = null,
    START_INPUT_MAPPING: ?*DemoGameMidletState = null,
    var STATE: ?*DemoGameMidletStateFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        STATE = DemoGameMidletStateFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NONE = DemoGameMidletState.create();
        this.START_DEMO = DemoGameMidletState.create();
        this.START_GAME = DemoGameMidletState.create();
        this.START_INPUT_MAPPING = DemoGameMidletState.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DemoGameMidletStateFactory {
        return Inheritance.upcast(?*DemoGameMidletStateFactory, DemoGameMidletStateFactory.STATE);
    }
};

