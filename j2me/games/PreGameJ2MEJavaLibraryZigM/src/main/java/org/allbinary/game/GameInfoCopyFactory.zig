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
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;

pub const GameInfoCopyFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameInfoCopyFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstanceMaxLevel(gameInfo: ?*GameInfo, maxLevel: i32) ?*GameInfo {
        return Inheritance.callStatic(GameInfo, "create5", .{ gameInfo.?.getGameType(), gameInfo.?.getGameMode(), gameInfo.?.getPlayerType(), maxLevel, gameInfo.?.getCurrentLevel() });
    }
    

    pub fn getInstance(gameInfo: ?*GameInfo) ?*GameInfo {
        return Inheritance.callStatic(GameInfo, "create5", .{ gameInfo.?.getGameType(), gameInfo.?.getGameMode(), gameInfo.?.getPlayerType(), gameInfo.?.getHighestLevel(), gameInfo.?.getCurrentLevel() });
    }
};

