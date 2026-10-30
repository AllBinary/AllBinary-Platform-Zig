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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;

pub const AdConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.AdConfiguration";
    INNERACTIVE: ?*String = null,
    LEADBOLT: ?*String = null,
    ADMOB: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create1(advertIdArray: []?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.INNERACTIVE = Inheritance.cast(?*String, advertIdArray[@intCast(0)]);
        this.ADMOB = Inheritance.cast(?*String, advertIdArray[@intCast(1)]);
        this.LEADBOLT = Inheritance.cast(?*String, advertIdArray[@intCast(2)]);
        return this;
    }
    

    pub fn getValidAdSpots(self: *Self) []?*Direction {
        _ = self;
        return array_N65949: { const array_N65949_array = allocator.alloc(?*Direction, @intCast(0)) catch unreachable; @memset(array_N65949_array, null); break :array_N65949 array_N65949_array; };
    }
    

    pub fn process(self: *Self, gameState: ?*GameState) void {
        _ = gameState;
        _ = self;
    }
    

    pub fn processDemo(self: *Self, state: i32) void {
        _ = state;
        _ = self;
    }
    

    pub fn setShowAds(self: *Self) void {
        _ = self;
    }
    

    pub fn setToggleAds(self: *Self, showAds: bool) void {
        _ = showAds;
        _ = self;
    }
    

    pub fn isShowAds(self: *Self) bool {
        _ = self;
        return true;
    }
};

