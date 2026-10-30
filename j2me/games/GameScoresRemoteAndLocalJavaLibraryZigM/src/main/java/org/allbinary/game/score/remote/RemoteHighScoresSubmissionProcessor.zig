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
const GameInfoData = @import("org/allbinary/game/GameInfoData.zig").GameInfoData;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const XmlRpcAbeClient = @import("org/allbinary/logic/communication/xmlrpc/XmlRpcAbeClient.zig").XmlRpcAbeClient;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const NoCrypt = @import("org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt.zig").NoCrypt;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const RemoteHighScores = @import("org/allbinary/game/score/remote/RemoteHighScores.zig").RemoteHighScores;
const RemoteHighScoresData = @import("org/allbinary/game/score/remote/RemoteHighScoresData.zig").RemoteHighScoresData;
const RemoteHighScoresSubmissionProcessorInterface = @import("org/allbinary/game/score/remote/RemoteHighScoresSubmissionProcessorInterface.zig").RemoteHighScoresSubmissionProcessorInterface;
const XmlRpcRemoteHighScoresClient = @import("org/allbinary/game/score/remote/XmlRpcRemoteHighScoresClient.zig").XmlRpcRemoteHighScoresClient;
const Long = @import("java/lang/Long.zig").Long;

pub const RemoteHighScoresSubmissionProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.remote.RemoteHighScoresSubmissionProcessor";
    pub const java_interfaces = .{ RemoteHighScoresSubmissionProcessorInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    noCrypt: ?*NoCrypt = null,
    // Implements RemoteHighScoresSubmissionProcessorInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.noCrypt = NoCrypt.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn process(self: *Self, remoteHighScores: ?*RemoteHighScores, abeClientInformation: ?*AbeClientInformationInterface, highScore: ?*HighScore) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Begin Remote HighScores Submission"), self, self.commonStrings.?.PROCESS });
            const gameInfoData: ?*GameInfoData = Inheritance.upcast(?*GameInfoData, GameInfoData.getInstance());
            const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, abeClientInformation.?.toHashtable());
            _ = Inheritance.call(HashtableUtil.getInstance().?, "putAll", .{ Inheritance.receiverOf(highScore.?.getGameInfo().?, "toHashtable").toHashtable(), hashtable });
            _ = Inheritance.call(hashtable.?, "put", .{ RemoteHighScoresData.getInstance().?.CUSTOMER_USER_NAME, String.literal("None") });
            _ = Inheritance.call(hashtable.?, "put", .{ RemoteHighScoresData.getInstance().?.DISPLAY_NAME, highScore.?.getName() });
            _ = Inheritance.call(hashtable.?, "put", .{ gameInfoData.?.SOFTWARE_INFORMATION, Object.toString(Object.of(Inheritance.receiver(remoteHighScores.?, "getSoftwareInformation").getSoftwareInformation())) });
            _ = Inheritance.call(hashtable.?, "put", .{ remoteHighScores.?.ASCENDING, Object.toString(Object.of(Inheritance.receiver(remoteHighScores.?, "getAscending").getAscending())) });
            const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
            _ = Inheritance.call(hashtable.?, "put", .{ displayInfoSingleton.?.ORIENTATION, Inheritance.call(BooleanFactory.getInstance().?, "toStringb", .{ displayInfoSingleton.?.isPortrait() }) });
            _ = Inheritance.call(hashtable.?, "put", .{ RemoteHighScoresData.getInstance().?.GAME_CONFIGURATION, Object.toString(Object.of(GameConfigurationCentral.getInstance())) });
            _ = Inheritance.call(hashtable.?, "put", .{ RemoteHighScoresData.getInstance().?.SCORE, String.valueOf(highScore.?.getScore()) });
            if (XmlRpcAbeClient.isOnline) {
                const resultHashtable: ?*ABHashtable = Inheritance.cast(?*ABHashtable, Inheritance.call(Inheritance.callStatic(XmlRpcRemoteHighScoresClient, "create3", .{ abeClientInformation, String.literal("highscoresubmissionservicessl.php"), String.literal("HighScoreSubmissionService.process") }), "get", .{ hashtable, self.noCrypt }));
                _ = Inheritance.call(remoteHighScores.?, "update", .{ resultHashtable });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.PROCESS, e });
    }
};

