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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScoresInterface = @import("org/allbinary/game/score/HighScoresInterface.zig").HighScoresInterface;

pub const HighScores = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScores";
    pub const java_interfaces = .{ HighScoresInterface };
    orderedHighScoresList: ?*BasicArrayList = null,
    name: ?*String = null,
    heading: ?*String = null,
    columnOneHeading: ?*String = null,
    columnTwoHeading: ?*String = null,
    // Implements HighScoresInterface

    fn initFields(this: *Self) void {
        this.orderedHighScoresList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        
        this.columnOneHeading = String.literal("Name");
        
    }
    

    pub fn create3(name: ?*String, heading: ?*String, columnTwoHeading: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.heading = heading;
        this.columnTwoHeading = columnTwoHeading;
        return this;
    }
    

    pub fn setList(self: *Self, orderedHighScoresList: ?*BasicArrayList) void {
        self.orderedHighScoresList = orderedHighScoresList;
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.orderedHighScoresList;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getTotal(self: *Self) i32 {
        return Inheritance.receiverOf(self.getList().?, "size").size();
    }
    

    pub fn addHighScore(self: *Self, newHighScore: ?*HighScore) void {
        _ = Inheritance.call(self.orderedHighScoresList.?, "add", .{ newHighScore });
    }
    

    pub fn getHeading(self: *Self) ?*String {
        return self.heading;
    }
    

    pub fn getColumnOneHeading(self: *Self) ?*String {
        return self.columnOneHeading;
    }
    

    pub fn getColumnTwoHeading(self: *Self) ?*String {
        return self.columnTwoHeading;
    }
    

    // throws Exception
    pub fn isBestScore(self: *Self, newHighScore: ?*HighScore) bool {
        _ = newHighScore;
        _ = self;
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("HighScores: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.heading });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.TOTAL_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.orderedHighScoresList.?.size() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

