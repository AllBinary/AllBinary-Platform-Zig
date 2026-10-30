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
// package org.allbinary.game.ag.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LifeInterface = @import("org/allbinary/game/ag/life/LifeInterface.zig").LifeInterface;

pub const Life = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.life.Life";
    pub const java_interfaces = .{ LifeInterface };
    lives: i16 = 0,
    startLives: i16 = 0,
    maxlives: i16 = 0,
    // Implements LifeInterface
    pub var NO_LIFE: ?*Life = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NO_LIFE = Inheritance.upcast(?*Life, Life.createLife());
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn createLife() ?*Life {
        { // try
            return Inheritance.callStatic(Life, "create2", .{ @as(i16, @intCast(0)), @as(i16, @intCast(0)) });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn create2(lives: i16, maxlives: i16) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.maxlives = maxlives;
        if (lives > this.maxlives) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("To Many Lives"); break :exception error.Exception; }});
        }
        this.lives = lives;
        this.startLives = lives;
        return this;
    }
    

    pub fn get(self: *Self) i16 {
        return self.lives;
    }
    

    pub fn set(self: *Self, lives: i16) void {
        self.lives = lives;
    }
    

    pub fn reset(self: *Self) void {
        self.lives = self.startLives;
    }
    

    pub fn add(self: *Self, lives: i16) void {
        if (!self.reachedLimit()) {
            if (self.lives + lives <= @as(i32, @intCast(self.getMaxlives()))) {
                self.lives = @as(i16, @intCast((self.lives + lives)));
            } else {
                self.lives = self.getMaxlives();
            }
        }
    }
    

    pub fn isAlive(self: *Self) bool {
        if (@as(i32, @intCast(self.lives)) <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn getMaxlives(self: *Self) i16 {
        return self.maxlives;
    }
    

    pub fn reachedLimit(self: *Self) bool {
        if (self.lives > self.maxlives or @as(i32, @intCast(self.lives)) < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn deaths(self: *Self, lives: i16) void {
        if (!self.reachedLimit()) {
            if (self.lives - lives >= 0) {
                self.lives = @as(i16, @intCast((self.lives - lives)));
            } else {
                self.lives = 0;
            }
        }
    }
    

    pub fn getStartLives(self: *Self) i16 {
        return self.startLives;
    }
    

    pub fn setStartLives(self: *Self, startLives: i16) void {
        self.startLives = startLives;
    }
};

