// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackGeographicMapInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface.zig").RaceTrackGeographicMapInterface;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NullRaceTrackGeographicMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.NullRaceTrackGeographicMap";
    pub const java_interfaces = .{ RaceTrackGeographicMapInterface };
    // Implements RaceTrackGeographicMapInterface
    pub var NULL_RACE_TRACK_GEOGRAPHIC_MAP: ?*NullRaceTrackGeographicMap = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_RACE_TRACK_GEOGRAPHIC_MAP = NullRaceTrackGeographicMap.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getId(self: *Self) ?*Integer {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getAllBinaryTiledLayer(self: *Self) ?*AllBinaryTiledLayer {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCellPositionsAt(self: *Self, layer: ?*Layer, currentCellPositionArray: [][]?*GeographicMapCellPosition, cellPositionArray: [][]?*GeographicMapCellPosition) bool {
        _ = layer;
        _ = currentCellPositionArray;
        _ = cellPositionArray;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCellPositionAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = x;
        _ = y;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCellPositionAtXYNoThrow(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = x;
        _ = y;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCellTypeFromMapCellTypeInt(self: *Self, cellTypeId: i32) i32 {
        _ = cellTypeId;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCellTypeAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellType {
        _ = x;
        _ = y;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getCellTypeAt(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellType {
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeographicMapCellPositionFactory(self: *Self) ?*BasicGeographicMapCellPositionFactory {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeographicMapCellPositionFactoryInterface(self: *Self) ?*GeographicMapCellPositionFactoryInterface {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getForegroundBasicColor(self: *Self) ?*BasicColor {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getBackgroundBasicColor(self: *Self) ?*BasicColor {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRaceTrackInfo(self: *Self) ?*RaceTrackInfo {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setRaceTrackInfo(self: *Self, aRaceTrackInfo: ?*RaceTrackInfo) void {
        _ = aRaceTrackInfo;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRaceTrackData(self: *Self) ?*RaceTrackData {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setRaceTrackData(self: *Self, raceTrackData: ?*RaceTrackData) void {
        _ = raceTrackData;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

