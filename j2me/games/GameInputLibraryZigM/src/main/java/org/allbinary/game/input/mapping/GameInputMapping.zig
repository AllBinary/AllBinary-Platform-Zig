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
// package org.allbinary.game.input.mapping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameKey = @import("org/allbinary/game/input/GameKey.zig").GameKey;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const GameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.GameInputMapping";
    name: ?*String = null,
    gameKey: ?*GameKey = null,

    fn initFields(this: *Self) void {
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.gameKey = Inheritance.upcast(?*GameKey, GameKey.NULL_GAME_KEY);
    }
    

    pub fn create2(name: ?*String, gameKey: ?*GameKey) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        _ = Inheritance.call(this, "setGameKey", .{ gameKey });
        return this;
    }
    

    pub fn setGameKey(self: *Self, gameKey: ?*GameKey) void {
        self.gameKey = gameKey;
    }
    

    pub fn getGameKey(self: *Self) ?*GameKey {
        return self.gameKey;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};

