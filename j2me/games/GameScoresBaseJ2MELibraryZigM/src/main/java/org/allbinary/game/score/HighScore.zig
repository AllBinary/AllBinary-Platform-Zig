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
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const DataOutputStream = @import("java/io/DataOutputStream.zig").DataOutputStream;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Long = @import("java/lang/Long.zig").Long;

pub const HighScore = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScore";
    id: i32 = 0,
    name: ?*String = null,
    gameInfo: ?*GameInfo = null,
    score: i64 = 0,
    scoreString: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create4(id: i32, name: ?*String, gameInfo: ?*GameInfo, score: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = id;
        this.name = name;
        this.gameInfo = gameInfo;
        this.score = score;
        this.scoreString = Inheritance.upcast(@TypeOf(this.scoreString), String.valueOf(this.score));
        return this;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getScore(self: *Self) i64 {
        return self.score;
    }
    

    // throws Exception
    pub fn getAsBytes(self: *Self) []i8 {
        const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
        const outputStream: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ byteArrayOutputStream });
        _ = Inheritance.call(outputStream.?, "writeUTF", .{ self.getName() });
        _ = Inheritance.call(outputStream.?, "writeLong", .{ self.getScore() });
        return byteArrayOutputStream.?.toByteArray();
    }
    

    pub fn getGameInfo(self: *Self) ?*GameInfo {
        return self.gameInfo;
    }
    

    pub fn getScoreString(self: *Self) ?*String {
        return self.scoreString;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        return Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.name }).?, "append", .{ commonSeps.?.COLON }).?, "appendlong", .{ self.score }).?, "append", .{ commonSeps.?.FORWARD_SLASH }).?, "append", .{ self.scoreString }))));
    }
};

