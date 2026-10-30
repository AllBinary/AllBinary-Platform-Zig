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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const RaceTrackFrictionProperties = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackFrictionProperties.zig").RaceTrackFrictionProperties;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const RaceTrackInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo";
    id: ?*Integer = null,
    name: ?*String = null,
    raceTrackFrictionProperties: ?*RaceTrackFrictionProperties = null,
    foregroundBasicColor: ?*BasicColor = null,
    backgroundBasicColor: ?*BasicColor = null,
    qualifyTime: i32 = 0,
    worstContinuePosition: i32 = 0,
    totalLaps: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
    }
    

    pub fn create8(id: ?*Integer, name: ?*String, raceTrackFrictionProperties: ?*RaceTrackFrictionProperties, foregroundBasicColor: ?*BasicColor, backgroundBasicColor: ?*BasicColor, qualifyTime: i32, worstContinuePosition: i32, totalLaps: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = id;
        this.name = name;
        this.raceTrackFrictionProperties = raceTrackFrictionProperties;
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundBasicColor = foregroundBasicColor;
        this.qualifyTime = qualifyTime;
        this.worstContinuePosition = worstContinuePosition;
        this.totalLaps = totalLaps;
        return this;
    }
    

    pub fn getId(self: *Self) ?*Integer {
        return self.id;
    }
    

    pub fn setId(self: *Self, id: ?*Integer) void {
        self.id = id;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getQualifyTime(self: *Self) i32 {
        return self.qualifyTime;
    }
    

    pub fn setQualifyTime(self: *Self, qualifyTime: i32) void {
        self.qualifyTime = qualifyTime;
    }
    

    pub fn getWorstContinuePosition(self: *Self) i32 {
        return self.worstContinuePosition;
    }
    

    pub fn setWorstContinuePosition(self: *Self, worstContinuePosition: i32) void {
        self.worstContinuePosition = worstContinuePosition;
    }
    

    pub fn getTotalLaps(self: *Self) i32 {
        return self.totalLaps;
    }
    

    pub fn setTotalLaps(self: *Self, totalLaps: i32) void {
        self.totalLaps = totalLaps;
    }
    

    pub fn getForegroundBasicColor(self: *Self) ?*BasicColor {
        return self.foregroundBasicColor;
    }
    

    pub fn setForegroundBasicColor(self: *Self, foregroundBasicColor: ?*BasicColor) void {
        self.foregroundBasicColor = foregroundBasicColor;
    }
    

    pub fn getBackgroundBasicColor(self: *Self) ?*BasicColor {
        return self.backgroundBasicColor;
    }
    

    pub fn setBackgroundBasicColor(self: *Self, backgroundBasicColor: ?*BasicColor) void {
        self.backgroundBasicColor = backgroundBasicColor;
    }
    

    pub fn getRaceTrackFrictionProperties(self: *Self) ?*RaceTrackFrictionProperties {
        return self.raceTrackFrictionProperties;
    }
    

    pub fn setRaceTrackFrictionProperties(self: *Self, raceTrackFrictionProperties: ?*RaceTrackFrictionProperties) void {
        self.raceTrackFrictionProperties = raceTrackFrictionProperties;
    }
};

