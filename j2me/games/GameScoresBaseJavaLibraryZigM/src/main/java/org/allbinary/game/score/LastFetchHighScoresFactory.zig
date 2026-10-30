// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const NoHighScoresFactory = @import("org/allbinary/game/score/NoHighScoresFactory.zig").NoHighScoresFactory;

pub const LastFetchHighScoresFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.LastFetchHighScoresFactory";
    highScoresArray: []?*HighScores = &.{},
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.highScoresArray = NoHighScoresFactory.getInstance().?.NO_HIGH_SCORES;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LastFetchHighScoresFactory {
        if (Object.same(LastFetchHighScoresFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            LastFetchHighScoresFactory.instance = Inheritance.upcast(@TypeOf(LastFetchHighScoresFactory.instance), LastFetchHighScoresFactory.create());
        }
        return Inheritance.cast(?*LastFetchHighScoresFactory, LastFetchHighScoresFactory.instance);
    }
};

