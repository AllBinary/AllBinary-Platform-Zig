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
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;

pub const HighScoresBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresBase";
    pub const java_interfaces = .{ HighScoresFactoryInterface };
    commonStrings: ?*CommonStrings = null,
    // Implements HighScoresFactoryInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn fetchHighScores(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
        _ = gameInfo;
        _ = highScoresResultsListener;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn fetchHighScoresPreload(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void {
        _ = gameInfo;
        _ = highScoresResultsListener;
        _ = preload;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn createHighScoresHelper(self: *Self) ?*HighScoresHelperBaseInterface {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

