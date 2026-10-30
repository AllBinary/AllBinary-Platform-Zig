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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresBase = @import("org/allbinary/game/score/HighScoresBase.zig").HighScoresBase;
const HighScoresHelperBase = @import("org/allbinary/game/score/HighScoresHelperBase.zig").HighScoresHelperBase;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;

pub const NoHighScoresFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.NoHighScoresFactory";
    base: HighScoresBase = undefined,
    logUtil: ?*LogUtil = null,
    NO_HIGH_SCORES: []?*HighScores = &.{},
    var instance: ?*NoHighScoresFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoHighScoresFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.NO_HIGH_SCORES = array_N65827: { const array_N65827_array = allocator.alloc(?*HighScores, @intCast(0)) catch unreachable; @memset(array_N65827_array, null); break :array_N65827 array_N65827_array; };
    }
    

    pub fn getInstance() ?*NoHighScoresFactory {
        return Inheritance.upcast(?*NoHighScoresFactory, NoHighScoresFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HighScoresBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn fetchHighScores(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
        _ = gameInfo;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Getting No HighScores"), self, String.literal("fetchHighScores") });
        _ = Inheritance.call(highScoresResultsListener.?, "setHighScoresArray", .{ self.NO_HIGH_SCORES });
    }
    

    pub fn createHighScoresHelper(self: *Self) ?*HighScoresHelperBaseInterface {
        _ = self;
        return Inheritance.upcast(?*HighScoresHelperBaseInterface, HighScoresHelperBase.create());
    }
};

