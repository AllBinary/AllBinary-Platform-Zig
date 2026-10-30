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
// package org.allbinary.game.score.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScoreNamePersistanceSingleton = @import("org/allbinary/game/score/HighScoreNamePersistanceSingleton.zig").HighScoreNamePersistanceSingleton;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresFactoryInterface = @import("org/allbinary/game/score/HighScoresFactoryInterface.zig").HighScoresFactoryInterface;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const HighScoreUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.displayable.HighScoreUtil";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    highScoresFactoryInterface: ?*HighScoresFactoryInterface = null,
    highScoresArray: []?*HighScores = &.{},
    highScore: ?*HighScore = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    gameInfo: ?*GameInfo = null,
    highScoresHelper: ?*HighScoresHelperBaseInterface = null,
    firstTime: bool = false,
    // Implements HighScoresResultsListener
    pub var SUBMIT_TEXTBOX_COMMAND: ?*Command = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SUBMIT_TEXTBOX_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Submit"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
        
        
        this.firstTime = true;
    }
    

    pub fn create7(highScoresFactoryInterface: ?*HighScoresFactoryInterface, highScoresHelper: ?*HighScoresHelperBaseInterface, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, cmdListener: ?*CommandListener, name: ?*String, highScore: ?*HighScore) *Self {
        _ = cmdListener;
        _ = name;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresHelper = highScoresHelper;
        this.highScoresArray = Inheritance.upcast(@TypeOf(this.highScoresArray), Inheritance.receiver(this.highScoresHelper.?, "getHighScoresArray").getHighScoresArray());
        this.highScore = highScore;
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
        return this;
    }
    

    pub fn setHighScoresArray(self: *Self, highScoresArray: []?*HighScores) void {
        self.highScoresArray = highScoresArray;
        self.firstTime = false;
        _ = self.saveHighScore();
    }
    

    pub fn update(self: *Self, name: ?*String) void {
        _ = Inheritance.call(HighScoreNamePersistanceSingleton.getInstance().?, "save", .{ self.abeClientInformation, self.gameInfo, name });
        _ = Inheritance.call(self.highScore.?, "setName", .{ name });
    }
    

    pub fn saveHighScore(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.START }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.highScore }) }))), self, String.literal("saveHighScore") });
        const size: i32 = @as(i32, @intCast(self.highScoresArray.len));
        if (self.firstTime and size == 0) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Games canvas did not give us any HighScores"), self, String.literal("saveHighScore") });
            _ = Inheritance.call(self.highScoresFactoryInterface.?, "fetchHighScores", .{ self.gameInfo, self });
            return;
        }
        var highScores: ?*HighScores = null;
        var highScoresAsString: ?*String = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            highScores = Inheritance.upcast(@TypeOf(highScores), self.highScoresArray[@intCast(index)]);
            _ = Inheritance.call(highScores.?, "addHighScore", .{ self.highScore });
            highScoresAsString = Inheritance.upcast(@TypeOf(highScoresAsString), Object.toString(Object.of(highScores)));
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Added/Adding Score: ") }).?, "append", .{ highScoresAsString }))), self, String.literal("saveHighScore") });
            }
        }
        _ = Inheritance.call(self.highScoresHelper.?, "setHighScoresArray", .{ self.highScoresArray });
    }
    

    pub fn submit(self: *Self, myCanvas: ?*MyCanvas) void {
        _ = self;
        const commandListener: ?*CommandListener = Inheritance.upcast(?*CommandListener, Inheritance.receiver(myCanvas.?, "getCustomCommandListener").getCustomCommandListener());
        _ = Inheritance.call(commandListener.?, "commandAction", .{ HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas });
    }
};

