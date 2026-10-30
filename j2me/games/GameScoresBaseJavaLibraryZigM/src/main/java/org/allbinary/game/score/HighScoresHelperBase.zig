// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const LastFetchHighScoresFactory = @import("org/allbinary/game/score/LastFetchHighScoresFactory.zig").LastFetchHighScoresFactory;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;

pub const HighScoresHelperBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresHelperBase";
    pub const java_interfaces = .{ HighScoresHelperBaseInterface };
    logUtil: ?*LogUtil = null,
    highScoresArrayP: []?*HighScores = &.{},
    // Implements HighScoresHelperBaseInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.highScoresArrayP = LastFetchHighScoresFactory.getInstance().?.highScoresArray;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn setHighScoresArray(self: *Self, highScoresArrayP: []?*HighScores) void {
        if (highScoresArrayP != null) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonStrings.?.START }).?, "appendint", .{ @as(i32, @intCast(highScoresArrayP.len)) }))), self, String.literal("setHighScoresArray") });
        } else {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.START, self, String.literal("setHighScoresArray") });
        }
        self.highScoresArrayP = highScoresArrayP;
    }
    

    pub fn getNextHighScores(self: *Self) ?*HighScores {
        _ = self;
        return Inheritance.upcast(?*HighScores, NullHighScoresSingletonFactory.getInstance());
    }
    

    pub fn isAnyHighScores(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setSelectedHighScores(self: *Self, selectedHighScores: ?*HighScores) void {
        _ = selectedHighScores;
        _ = self;
    }
    

    pub fn getSelectedHighScores(self: *Self) ?*HighScores {
        _ = self;
        return Inheritance.upcast(?*HighScores, NullHighScoresSingletonFactory.getInstance());
    }
    

    pub fn getHighScoresArray(self: *Self) []?*HighScores {
        return self.highScoresArrayP;
    }
    

    pub fn selectHighScores(self: *Self) void {
        _ = self;
    }
};

