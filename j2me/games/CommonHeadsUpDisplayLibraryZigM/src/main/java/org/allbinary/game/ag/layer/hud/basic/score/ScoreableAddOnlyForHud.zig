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
// package org.allbinary.game.ag.layer.hud.basic.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Scoreable = @import("org/allbinary/game/score/Scoreable.zig").Scoreable;
const ScoreHudWidget = @import("org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.zig").ScoreHudWidget;

pub const ScoreableAddOnlyForHud = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.score.ScoreableAddOnlyForHud";
    base: Scoreable = undefined,
    scoreHudWidget: ?*ScoreHudWidget = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(scoreVectorGraphic: ?*ScoreHudWidget) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Scoreable, "create1", .{ 0 }).*;
        this.initFields();
        this.scoreHudWidget = scoreVectorGraphic;
        _ = Inheritance.call(this.getScoreHudWidget().?, "set", .{ 0 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn removePoints(self: *Self, points: i32) void {
        _ = points;
        _ = self;
    }
    

    pub fn addPoints(self: *Self, points: i32) void {
        _ = Inheritance.call(&self.base, "addPoints", .{ points });
        _ = Inheritance.call(self.getScoreHudWidget().?, "add", .{ points });
    }
    

    pub fn getScoreHudWidget(self: *Self) ?*ScoreHudWidget {
        return self.scoreHudWidget;
    }
};

