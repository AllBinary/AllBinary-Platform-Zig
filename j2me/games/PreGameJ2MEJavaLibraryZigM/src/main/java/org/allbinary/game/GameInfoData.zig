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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GameInfoData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameInfoData";
    GAME_TYPE: ?*String = null,
    GAME_MODE: ?*String = null,
    PLAYER_TYPE: ?*String = null,
    HIGHEST_LEVEL: ?*String = null,
    CURRENT_LEVEL: ?*String = null,
    SOFTWARE_INFORMATION: ?*String = null,
    var instance: ?*GameInfoData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameInfoData.create();
    }

    fn initFields(this: *Self) void {
        this.GAME_TYPE = String.literal("GAME_TYPE");
        this.GAME_MODE = String.literal("GAME_MODE");
        this.PLAYER_TYPE = String.literal("PLAYER_TYPE");
        this.HIGHEST_LEVEL = String.literal("HIGHEST_LEVEL");
        this.CURRENT_LEVEL = String.literal("CURRENT_LEVEL");
        this.SOFTWARE_INFORMATION = String.literal("SOFTWARE_INFORMATION");
    }
    

    pub fn getInstance() ?*GameInfoData {
        return Inheritance.upcast(?*GameInfoData, GameInfoData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

