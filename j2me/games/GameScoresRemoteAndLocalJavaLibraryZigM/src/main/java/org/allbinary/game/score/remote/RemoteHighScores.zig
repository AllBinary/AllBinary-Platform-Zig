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
// package org.allbinary.game.score.remote

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const RemoteErrorHighScoresSingletonFactory = @import("org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory.zig").RemoteErrorHighScoresSingletonFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const SoftwareInformation = @import("org/allbinary/logic/system/SoftwareInformation.zig").SoftwareInformation;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const RemoteHighScoresData = @import("org/allbinary/game/score/remote/RemoteHighScoresData.zig").RemoteHighScoresData;
const RemoteHighScoresProcessorFactory = @import("org/allbinary/game/score/remote/RemoteHighScoresProcessorFactory.zig").RemoteHighScoresProcessorFactory;
const RemoteHighScoresSubmissionProcessorFactory = @import("org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorFactory.zig").RemoteHighScoresSubmissionProcessorFactory;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const RemoteHighScores = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.remote.RemoteHighScores";
    base: HighScores = undefined,
    logUtil: ?*LogUtil = null,
    enumerationUtil: ?*EnumerationUtil = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    softwareInformation: ?*SoftwareInformation = null,
    ascending: ?*Boolean = null,
    ASCENDING: ?*String = null,
    var hashTable: ?*ABHashtable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashTable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        
        
        this.ascending = null;
        this.ASCENDING = String.literal("ASCENDING");
    }
    

    pub fn create7(abeClientInformation: ?*AbeClientInformationInterface, softwareInformation: ?*SoftwareInformation, gameInfo: ?*GameInfo, heading: ?*String, columnTwoHeading: ?*String, ascending: ?*Boolean, preload: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HighScores, "create3", .{ Object.toString(Object.of(gameInfo)), heading, columnTwoHeading }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        this.softwareInformation = softwareInformation;
        _ = Inheritance.call(this, "setAscending", .{ ascending });
        if (preload) {
            _ = Inheritance.call(RemoteHighScoresProcessorFactory.getInstance().?, "process", .{ this, this.abeClientInformation, gameInfo });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance(abeClientInformation: ?*AbeClientInformationInterface, softwareInformation: ?*SoftwareInformation, gameInfo: ?*GameInfo, heading: ?*String, columnTwoHeading: ?*String, isAscending: ?*Boolean) ?*HighScores {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*HighScores, Inheritance.callStatic(RemoteHighScores, "getInstancePreload", .{ abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, true }));
    }
    

    pub fn getInstancePreload(abeClientInformation: ?*AbeClientInformationInterface, softwareInformation: ?*SoftwareInformation, gameInfo: ?*GameInfo, heading: ?*String, columnTwoHeading: ?*String, isAscending: ?*Boolean, preload: bool) ?*HighScores {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            var highScores: ?*HighScores = Inheritance.cast(?*HighScores, Inheritance.call(RemoteHighScores.hashTable.?, "get", .{ gameInfo }));
            if (highScores == null) {
                highScores = Inheritance.upcast(@TypeOf(highScores), Inheritance.callStatic(RemoteHighScores, "create7", .{ abeClientInformation, softwareInformation, gameInfo, heading, columnTwoHeading, isAscending, preload }));
                _ = Inheritance.call(RemoteHighScores.hashTable.?, "put", .{ gameInfo, highScores });
            }
            return highScores;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, RemoteErrorHighScoresSingletonFactory.getInstance(), commonStrings.?.GET_INSTANCE, e });
//             return Inheritance.upcast(?*HighScores, RemoteErrorHighScoresSingletonFactory.getInstance());
    }
    

    pub fn addHighScore(self: *Self, newHighScore: ?*HighScore) void {
        _ = Inheritance.call(RemoteHighScoresSubmissionProcessorFactory.getInstance().?, "process", .{ self, self.abeClientInformation, newHighScore });
    }
    

    pub fn update(self: *Self, hashtable: ?*ABHashtable) void {
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "clear").clear();
        const vector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, RemoteHighScoresData.getInstance().?.HIGH_SCORES) }));
        if (vector != null) {
            const size: i32 = vector.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const highScoreVector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(vector.?, "get", .{ index }));
                const displayName: ?*String = Inheritance.cast(?*String, Inheritance.call(highScoreVector.?, "get", .{ 0 }));
                const score: ?*String = Inheritance.cast(?*String, Inheritance.call(highScoreVector.?, "get", .{ 1 }));
                const longScore: i64 = (std.fmt.parseInt(i64, score.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
                const highScore: ?*HighScore = Inheritance.callStatic(HighScore, "create4", .{ -1, displayName, null, longScore });
                _ = Inheritance.call(Inheritance.receiver(self, "getList").getList().?, "add", .{ highScore });
                }
            }
        } else {
            const NEXT_ELEMENT: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.NEXT }).?, "append", .{ String.literal("Element: ") }))));
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(hashtable.?, "elements").elements());
            var nextElement: ?Object = null;
            while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
                nextElement = Inheritance.upcast(@TypeOf(nextElement), Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(NEXT_ELEMENT, nextElement), self, commonStrings.?.PROCESS });
            }
        }
    }
    

    pub fn setAscending(self: *Self, ascending: ?*Boolean) void {
        self.ascending = ascending;
    }
    

    pub fn getAscending(self: *Self) ?*Boolean {
        return self.ascending;
    }
    

    pub fn getSoftwareInformation(self: *Self) ?*SoftwareInformation {
        return self.softwareInformation;
    }
};

