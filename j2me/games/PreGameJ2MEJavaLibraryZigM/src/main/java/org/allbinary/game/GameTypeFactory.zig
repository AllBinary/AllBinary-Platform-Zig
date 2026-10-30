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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GameType = @import("org/allbinary/game/GameType.zig").GameType;

pub const GameTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameTypeFactory";
    NULL_GAME_TYPE_ARRAY: []?*GameType = &.{},
    NONE: ?*GameType = null,
    SINGLE_PLAYER: ?*GameType = null,
    MULTI_PLAYER: ?*GameType = null,
    BOT: ?*GameType = null,
    var instance: ?*GameTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NULL_GAME_TYPE_ARRAY = array_N65727: { const array_N65727_array = allocator.alloc(?*GameType, @intCast(0)) catch unreachable; @memset(array_N65727_array, null); break :array_N65727 array_N65727_array; };
        this.NONE = Inheritance.callStatic(GameType, "create1", .{ StringUtil.getInstance().?.NULL_STRING });
        this.SINGLE_PLAYER = Inheritance.callStatic(GameType, "create1", .{ String.literal("Single Player") });
        this.MULTI_PLAYER = Inheritance.callStatic(GameType, "create1", .{ String.literal("Multi Player") });
        this.BOT = Inheritance.callStatic(GameType, "create1", .{ String.literal("Artificial Player") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameTypeFactory {
        return Inheritance.upcast(?*GameTypeFactory, GameTypeFactory.instance);
    }
};

