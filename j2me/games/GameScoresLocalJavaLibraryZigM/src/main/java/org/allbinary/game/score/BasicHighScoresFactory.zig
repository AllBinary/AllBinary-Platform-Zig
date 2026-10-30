// Generated Code Do Not Modify
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SoftwareInformation = @import("org/allbinary/logic/system/SoftwareInformation.zig").SoftwareInformation;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresBase = @import("org/allbinary/game/score/HighScoresBase.zig").HighScoresBase;
const HighScoresHelper2 = @import("org/allbinary/game/score/HighScoresHelper2.zig").HighScoresHelper2;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;
const RecordStoreHighScores = @import("org/allbinary/game/score/RecordStoreHighScores.zig").RecordStoreHighScores;
const ScoreComparator = @import("org/allbinary/game/score/ScoreComparator.zig").ScoreComparator;

pub const BasicHighScoresFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.BasicHighScoresFactory";
    base: HighScoresBase = undefined,
    logUtil: ?*LogUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    highScoresArray: []?*HighScores = &.{},
    TOP: ?*String = null,
    SCORES: ?*String = null,
    PERSONAL_HIGH_SCORES: ?*String = null,
    FETCH: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        this.highScoresArray = array_N65924: { const array_N65924_array = allocator.alloc(?*HighScores, @intCast(1)) catch unreachable; @memset(array_N65924_array, null); break :array_N65924 array_N65924_array; };
        this.TOP = String.literal("Top");
        this.SCORES = String.literal("Scores");
        this.PERSONAL_HIGH_SCORES = String.literal("Personal Top Scores");
        this.FETCH = String.literal("fetchHighScores");
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, softwareInformation: ?*SoftwareInformation) *Self {
        _ = softwareInformation;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HighScoresBase.create().*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn fetchHighScores(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Getting Local HighScores"), self, self.FETCH });
        _ = Inheritance.call(self, "fetchHighScoresPreload", .{ gameInfo, highScoresResultsListener, true });
    }
    

    pub fn fetchHighScoresPreload(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void {
        _ = preload;
        { // try
            self.highScoresArray[@intCast(0)] = Inheritance.upcast(@TypeOf(self.highScoresArray[@intCast(0)]), Inheritance.callStatic(RecordStoreHighScores, "getInstance", .{ self.abeClientInformation, gameInfo, self.TOP, self.PERSONAL_HIGH_SCORES, self.SCORES, Inheritance.callStatic(ScoreComparator, "create1", .{ true }) }));
            _ = Inheritance.call(highScoresResultsListener.?, "setHighScoresArray", .{ self.highScoresArray });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, self.FETCH, e });
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

