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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const GameInfoData = @import("org/allbinary/game/GameInfoData.zig").GameInfoData;
const GameMode = @import("org/allbinary/game/GameMode.zig").GameMode;
const GameType = @import("org/allbinary/game/GameType.zig").GameType;
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const PlayerType = @import("org/allbinary/game/PlayerType.zig").PlayerType;
const PlayerTypesFactory = @import("org/allbinary/game/PlayerTypesFactory.zig").PlayerTypesFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.GameInfo";
    logUtil: ?*LogUtil = null,
    gameInfoData: ?*GameInfoData = null,
    gameType: ?*GameType = null,
    gameMode: ?*GameMode = null,
    playerType: ?*PlayerType = null,
    highestLevel: i32 = 0,
    currentLevel: i32 = 0,
    NEW_LEVEL: ?*String = null,
    SET_CURRENT_LEVEL: ?*String = null,
    NEXT_GAME_LEVEL: ?*String = null,
    pub var NONE: ?*GameInfo = undefined;
    pub const LEVEL_NAME: ?*String = String.literal("LEVEL");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NONE = Inheritance.callStatic(GameInfo, "create5", .{ GameTypeFactory.getInstance().?.NONE, GameMode.NONE, PlayerTypesFactory.getInstance().?.PLAYER_TYPE_ONE, -1, -1 });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.gameInfoData = Inheritance.upcast(?*GameInfoData, GameInfoData.getInstance());
        
        
        
        this.highestLevel = 0;
        
        this.NEW_LEVEL = String.literal("New Level: ");
        this.SET_CURRENT_LEVEL = String.literal("setCurrentLevel");
        this.NEXT_GAME_LEVEL = String.literal("nextGameLevel");
    }
    

    pub fn create5(gameType: ?*GameType, gameMode: ?*GameMode, playerType: ?*PlayerType, highestLevel: i32, currentLevel: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.gameType = gameType;
        this.gameMode = gameMode;
        _ = Inheritance.call(this, "setHighestLevel", .{ highestLevel });
        this.currentLevel = currentLevel;
        this.playerType = playerType;
        return this;
    }
    

    pub fn getGameType(self: *Self) ?*GameType {
        return self.gameType;
    }
    

    pub fn getGameMode(self: *Self) ?*GameMode {
        return self.gameMode;
    }
    

    pub fn getPlayerType(self: *Self) ?*PlayerType {
        return self.playerType;
    }
    

    pub fn getHighestLevel(self: *Self) i32 {
        return self.highestLevel;
    }
    

    pub fn setHighestLevel(self: *Self, highestLevel: i32) void {
        self.highestLevel = highestLevel;
    }
    

    pub fn getCurrentLevel(self: *Self) i32 {
        return self.currentLevel;
    }
    

    pub fn setCurrentLevel(self: *Self, currentLevel: i32) void {
        self.currentLevel = currentLevel;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.NEW_LEVEL }).?, "appendint", .{ self.getCurrentLevel() }))), self, self.SET_CURRENT_LEVEL });
    }
    

    pub fn nextGameLevel(self: *Self) void {
        if (self.getCurrentLevel() < self.getHighestLevel()) {
            self.currentLevel += 1;
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.NEXT }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ self.NEW_LEVEL }).?, "appendint", .{ self.getCurrentLevel() }))), self, self.NEXT_GAME_LEVEL });
    }
    

    pub fn previousGameLevel(self: *Self) void {
        if (self.getCurrentLevel() > 1) {
            self.currentLevel -= 1;
        }
    }
    

    pub fn isLastLevel(self: *Self) bool {
        if (self.getCurrentLevel() >= self.getHighestLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        _ = Inheritance.call(hashtable.?, "put", .{ self.gameInfoData.?.GAME_TYPE, Object.toString(Object.of(self.getGameType())) });
        _ = Inheritance.call(hashtable.?, "put", .{ self.gameInfoData.?.GAME_MODE, Object.toString(Object.of(self.gameMode)) });
        _ = Inheritance.call(hashtable.?, "put", .{ self.gameInfoData.?.PLAYER_TYPE, Object.toString(Object.of(self.playerType)) });
        _ = Inheritance.call(hashtable.?, "put", .{ self.gameInfoData.?.HIGHEST_LEVEL, String.valueOf(self.getHighestLevel()) });
        _ = Inheritance.call(hashtable.?, "put", .{ self.gameInfoData.?.CURRENT_LEVEL, String.valueOf(self.currentLevel) });
        return hashtable;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.gameInfoData.?.GAME_TYPE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getGameType())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.gameInfoData.?.GAME_MODE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.gameMode)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.gameInfoData.?.PLAYER_TYPE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.playerType }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.gameInfoData.?.HIGHEST_LEVEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getHighestLevel() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.gameInfoData.?.CURRENT_LEVEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.EQUALS });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentLevel });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

