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
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const BasicHighScoresGameInfoFactory = @import("org/allbinary/game/BasicHighScoresGameInfoFactory.zig").BasicHighScoresGameInfoFactory;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const GameType = @import("org/allbinary/game/GameType.zig").GameType;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const RemoteHighScores = @import("org/allbinary/game/score/remote/RemoteHighScores.zig").RemoteHighScores;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const SoftwareInformation = @import("org/allbinary/logic/system/SoftwareInformation.zig").SoftwareInformation;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const SecondaryThreadPool = @import("org/allbinary/thread/SecondaryThreadPool.zig").SecondaryThreadPool;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresBase = @import("org/allbinary/game/score/HighScoresBase.zig").HighScoresBase;
const HighScoresHelper2 = @import("org/allbinary/game/score/HighScoresHelper2.zig").HighScoresHelper2;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;
const LastFetchHighScoresFactory = @import("org/allbinary/game/score/LastFetchHighScoresFactory.zig").LastFetchHighScoresFactory;
const RecordStoreHighScores = @import("org/allbinary/game/score/RecordStoreHighScores.zig").RecordStoreHighScores;
const ScoreComparator = @import("org/allbinary/game/score/ScoreComparator.zig").ScoreComparator;

pub const BasicHighScoresFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.BasicHighScoresFactory";
    base: HighScoresBase = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    softwareInformation: ?*SoftwareInformation = null,
    highScoresArray: []?*HighScores = &.{},
    TOP: ?*String = null,
    SCORES: ?*String = null,
    PERSONAL_HIGH_SCORES: ?*String = null,
    WORLD_TOP_SCORES: ?*String = null,
    FETCH: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        this.highScoresArray = array_N66185: { const array_N66185_array = allocator.alloc(?*HighScores, @intCast(2)) catch unreachable; @memset(array_N66185_array, null); break :array_N66185 array_N66185_array; };
        this.TOP = String.literal("Top");
        this.SCORES = String.literal("Scores");
        this.PERSONAL_HIGH_SCORES = String.literal("Personal Top Scores");
        this.WORLD_TOP_SCORES = String.literal("World Top Scores");
        this.FETCH = String.literal("fetchHighScores");
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, softwareInformation: ?*SoftwareInformation) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HighScoresBase.create().*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        this.softwareInformation = softwareInformation;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn fetchHighScores(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Getting Remote/Local HighScores"), self, self.FETCH });
        _ = Inheritance.call(self, "fetchHighScoresPreload", .{ gameInfo, highScoresResultsListener, true });
    }
    

    pub fn fetchHighScoresPreload(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void {
        _ = Inheritance.call(SecondaryThreadPool.getInstance().?, "runTask", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                 { // try
//                     _ = Inheritance.call(logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.FETCH });
//                     self.highScoresArray[@intCast(0)] = Inheritance.upcast(@TypeOf(self.highScoresArray[@intCast(0)]), Inheritance.callStatic(RecordStoreHighScores, "getInstance", .{ self.abeClientInformation, gameInfo, self.TOP, self.PERSONAL_HIGH_SCORES, self.SCORES, Inheritance.callStatic(ScoreComparator, "create1", .{ true }) }));
//                     const gameType: ?*GameType = Inheritance.upcast(?*GameType, gameInfo.?.getGameType());
//                     const gameTypeFactory: ?*GameTypeFactory = Inheritance.upcast(?*GameTypeFactory, GameTypeFactory.getInstance());
//                     var gameInfo2: ?*GameInfo = gameInfo;
//                     if (Object.same(gameType, gameTypeFactory.?.SINGLE_PLAYER) or Object.same(gameType, gameTypeFactory.?.BOT)) {
//                         gameInfo2 = Inheritance.upcast(@TypeOf(gameInfo2), BasicHighScoresGameInfoFactory.getInstance().?.SINGLE_PLAYER_SERVER);
//                     } else if (Object.same(gameType, gameTypeFactory.?.MULTI_PLAYER)) {
//                         gameInfo2 = Inheritance.upcast(@TypeOf(gameInfo2), BasicHighScoresGameInfoFactory.getInstance().?.MULTI_PLAYER_SERVER);
//                     }
//                     self.highScoresArray[@intCast(1)] = Inheritance.upcast(@TypeOf(self.highScoresArray[@intCast(1)]), Inheritance.callStatic(RemoteHighScores, "getInstancePreload", .{ self.abeClientInformation, self.softwareInformation, gameInfo2, self.WORLD_TOP_SCORES, self.SCORES, BooleanFactory.getInstance().?.FALSE, preload }));
//                     _ = Inheritance.call(logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.FETCH });
//                     LastFetchHighScoresFactory.getInstance().?.highScoresArray = Inheritance.upcast(@TypeOf(LastFetchHighScoresFactory.getInstance().?.highScoresArray), self.highScoresArray);
//                     _ = Inheritance.call(highScoresResultsListener.?, "setHighScoresArray", .{ self.highScoresArray });
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, self.FETCH, e });
//             }
 });
    }
    

    pub fn createHighScoresHelper(self: *Self) ?*HighScoresHelperBaseInterface {
        _ = self;
        return Inheritance.upcast(?*HighScoresHelperBaseInterface, HighScoresHelper2.create());
    }
    

    pub fn loaded(index2: i32) bool {
        if (index2 >= 0) {
            return true;
        }
        return false;
    }
};

