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

pub const HighScoresHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresHelper";
    base: HighScoresHelperBase = undefined,
    circularIndexUtil: ?*CircularIndexUtil = null,
    lastIndex: i32 = 0,

    fn initFields(this: *Self) void {
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstanceAt", .{ 0, 0 }));
        this.lastIndex = -1;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HighScoresHelperBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setHighScoresArray(self: *Self, highScoresArrayP: []?*HighScores) void {
        _ = Inheritance.call(&self.base, "setHighScoresArray", .{ highScoresArrayP });
        _ = Inheritance.call(self.circularIndexUtil.?, "setSize", .{ @as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len)) });
    }
    

    pub fn getNextHighScores(self: *Self) ?*HighScores {
        var highScores: ?*HighScores = Inheritance.upcast(?*HighScores, Inheritance.fieldPointer(self, "highScoresArrayP").*[@intCast(self.circularIndexUtil.?.getIndex())]);
        var index: i32 = 0;
        while ((highScores.?.getTotal() < 1 or self.lastIndex == self.circularIndexUtil.?.getIndex()) and index < @as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len))) {
            _ = self.circularIndexUtil.?.next();
            highScores = Inheritance.upcast(@TypeOf(highScores), Inheritance.fieldPointer(self, "highScoresArrayP").*[@intCast(self.circularIndexUtil.?.getIndex())]);
            index += 1;
        }
        self.lastIndex = self.circularIndexUtil.?.getIndex();
        return highScores;
    }
    

    pub fn isAnyHighScores(self: *Self) bool {
        if (@as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len)) < 1) {
            return false;
        }
        var anyScores: bool = false;
        var highScores: ?*HighScores = null;
        {
            var index: i32 = @as(i32, @intCast(Inheritance.fieldPointer(self, "highScoresArrayP").*.len)) - 1;
            while (index >= 0) : (index -= 1) {
            highScores = Inheritance.upcast(@TypeOf(highScores), Inheritance.fieldPointer(self, "highScoresArrayP").*[@intCast(index)]);
            if (highScores.?.getTotal() > 0) {
                anyScores = true;
            }
            }
        }
        return anyScores;
    }
};

