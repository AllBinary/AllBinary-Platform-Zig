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

pub const RemoteHighScoresData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.remote.RemoteHighScoresData";
    HIGH_SCORES: ?*String = null,
    CUSTOMER_USER_NAME: ?*String = null,
    DISPLAY_NAME: ?*String = null,
    SCORE: ?*String = null,
    GAME_INFO: ?*String = null,
    GAME_CONFIGURATION: ?*String = null,
    var SINGLETON: ?*RemoteHighScoresData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = RemoteHighScoresData.create();
    }

    fn initFields(this: *Self) void {
        this.HIGH_SCORES = String.literal("HIGH_SCORES");
        this.CUSTOMER_USER_NAME = String.literal("CUSTOMER_USER_NAME");
        this.DISPLAY_NAME = String.literal("DISPLAY_NAME");
        this.SCORE = String.literal("SCORE");
        this.GAME_INFO = String.literal("GAME_INFO");
        this.GAME_CONFIGURATION = String.literal("GAME_CONFIGURATION");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RemoteHighScoresData {
        return Inheritance.upcast(?*RemoteHighScoresData, RemoteHighScoresData.SINGLETON);
    }
};

