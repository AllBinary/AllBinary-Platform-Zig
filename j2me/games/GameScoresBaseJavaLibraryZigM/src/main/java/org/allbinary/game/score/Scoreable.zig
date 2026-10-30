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
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Scoreable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.Scoreable";
    pub const java_interfaces = .{ ScoreableInterface };
    points: i32 = 0,
    // Implements ScoreableInterface
    pub var ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 3 }));
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(points: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.points = points;
        return this;
    }
    

    pub fn addPoints(self: *Self, points: i32) void {
        self.points += points;
    }
    

    pub fn removePoints(self: *Self, points: i32) void {
        self.points -= points;
    }
    

    pub fn setPoints(self: *Self, points: i32) void {
        self.points = points;
    }
    

    pub fn getPoints(self: *Self) i32 {
        return self.points;
    }
};

