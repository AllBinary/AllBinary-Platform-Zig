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
// const TiledLayer = @import("javax/microedition/lcdui/game/TiledLayer.zig").TiledLayer;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;

pub const TiledLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, raceTrackData: ?*RaceTrackData) ?*TiledLayer {
        _ = self;
        const mapArray: [][]i32 = raceTrackData.?.getMapArray();
        return Inheritance.callStatic(TiledLayer, "create5", .{ @as(i32, @intCast(mapArray[@intCast(0)].len)), @as(i32, @intCast(mapArray.len)), raceTrackData.?.getTileSetImage(), raceTrackData.?.getCellWidth(), raceTrackData.?.getCellHeight() });
    }
    

    pub fn getMiniInstance(self: *Self, raceTrackData: ?*RaceTrackData) ?*TiledLayer {
        _ = self;
        const mapArray: [][]i32 = raceTrackData.?.getMapArray();
        return Inheritance.callStatic(TiledLayer, "create5", .{ @as(i32, @intCast(mapArray[@intCast(0)].len)), @as(i32, @intCast(mapArray.len)), raceTrackData.?.getMiniTileSetImage(), raceTrackData.?.getMiniCellWidth(), raceTrackData.?.getMiniCellHeight() });
    }
};

