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
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresHelperBase = @import("org/allbinary/game/score/HighScoresHelperBase.zig").HighScoresHelperBase;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;

pub const HighScoresHelper2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresHelper2";
    base: HighScoresHelperBase = undefined,
    circularIndexUtil: ?*CircularIndexUtil = null,
    selectedHighScores: ?*HighScores = null,

    fn initFields(this: *Self) void {
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstanceAt", .{ 0, 0 }));
        this.selectedHighScores = Inheritance.upcast(?*HighScores, NullHighScoresSingletonFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HighScoresHelperBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setSelectedHighScores(self: *Self, selectedHighScores: ?*HighScores) void {
        self.selectedHighScores = selectedHighScores;
    }
    

    pub fn getSelectedHighScores(self: *Self) ?*HighScores {
        return self.selectedHighScores;
    }
    

    pub fn setHighScoresArray(self: *Self, highScoresArrayP: []?*HighScores) void {
        _ = Inheritance.call(&self.base, "setHighScoresArray", .{ highScoresArrayP });
        _ = Inheritance.call(self.circularIndexUtil.?, "setSize", .{ @as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len)) });
        _ = self.selectHighScores();
    }
    

    pub fn selectHighScores(self: *Self) void {
        if (@as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len)) == 0) {
            _ = Inheritance.call(self, "setSelectedHighScores", .{ NullHighScoresSingletonFactory.getInstance() });
            return;
        }
        _ = self.circularIndexUtil.?.next();
        var highScores: ?*HighScores = Inheritance.upcast(?*HighScores, Inheritance.fieldPointer(self, "highScoresArrayP").*[@intCast(self.circularIndexUtil.?.getIndex())]);
        var index: i32 = 0;
        while (highScores.?.getTotal() < 1 and index < @as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len))) {
            highScores = Inheritance.upcast(@TypeOf(highScores), Inheritance.fieldPointer(self, "highScoresArrayP").*[@intCast(self.circularIndexUtil.?.next())]);
            index += 1;
        }
        _ = Inheritance.call(self, "setSelectedHighScores", .{ highScores });
    }
};

