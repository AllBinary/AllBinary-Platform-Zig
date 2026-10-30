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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const EndGameInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.EndGameInfo";
    NORMAL_GAME_OVER: ?*String = null,
    NORMAL_GAME_OVER_WIN: ?*String = null,
    gameOverStr: ?*String = null,
    winStr: ?*String = null,

    fn initFields(this: *Self) void {
        this.NORMAL_GAME_OVER = String.literal("Game Over");
        this.NORMAL_GAME_OVER_WIN = String.literal("You Won");
        this.gameOverStr = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.winStr = this.gameOverStr;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn update(self: *Self, gameInfo: ?*GameInfo, myCanvas: ?*MyCanvas) void {
        _ = gameInfo;
        _ = myCanvas;
        _ = Inheritance.call(self, "setGameOverStr", .{ self.NORMAL_GAME_OVER });
        _ = Inheritance.call(self, "setWinStr", .{ self.NORMAL_GAME_OVER_WIN });
    }
    

    pub fn getGameOverStr(self: *Self) ?*String {
        return self.gameOverStr;
    }
    

    pub fn setGameOverStr(self: *Self, gameOverStr: ?*String) void {
        self.gameOverStr = gameOverStr;
    }
    

    pub fn getWinStr(self: *Self) ?*String {
        return self.winStr;
    }
    

    pub fn setWinStr(self: *Self, winStr: ?*String) void {
        self.winStr = winStr;
    }
};

