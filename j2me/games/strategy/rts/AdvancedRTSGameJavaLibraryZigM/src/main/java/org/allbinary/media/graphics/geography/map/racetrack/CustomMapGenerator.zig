// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const WaypointLayer = @import("org/allbinary/game/layer/waypoint/WaypointLayer.zig").WaypointLayer;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const CustomMapGeneratorBase = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase.zig").CustomMapGeneratorBase;
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;

pub const CustomMapGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator";
    base: CustomMapGeneratorBase = undefined,
    customMapArray: [][]i32 = &.{},
    raceTrackGeographicMap: ?*RaceTrackGeographicMap = null,
    geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = null,
    dropCellPositionHistory: ?*DropCellPositionHistory = null,

    fn initFields(this: *Self) void {
        
        
        
        this.dropCellPositionHistory = Inheritance.upcast(?*DropCellPositionHistory, DropCellPositionHistory.getInstance());
    }
    

    pub fn create1(raceTrackGeographicMap: ?*RaceTrackGeographicMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomMapGeneratorBase.create().*;
        this.initFields();
        this.raceTrackGeographicMap = raceTrackGeographicMap;
        this.geographicMapCellTypeFactory = Inheritance.upcast(@TypeOf(this.geographicMapCellTypeFactory), Inheritance.receiver(this.raceTrackGeographicMap.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
        const mapArray: [][]i32 = Inheritance.receiverOf(Inheritance.receiver(raceTrackGeographicMap.?, "getRaceTrackData").getRaceTrackData().?, "getMapArray").getMapArray();
        const size2: i32 = @as(i32, @intCast(mapArray[@intCast(0)].len));
        this.customMapArray = Inheritance.upcast(@TypeOf(this.customMapArray), array_N66168: { const array_N66168_array = allocator.alloc([]i32, @intCast(@as(i32, @intCast(mapArray.len)))) catch unreachable; for (array_N66168_array) |*array_N66168_row| { array_N66168_row.* = allocator.alloc(i32, @intCast(size2)) catch unreachable; @memset(array_N66168_row.*, 0); } break :array_N66168 array_N66168_array; });
        if (@as(i32, @intCast(mapArray.len)) != @as(i32, @intCast(this.customMapArray.len)) or @as(i32, @intCast(mapArray[@intCast(0)].len)) != @as(i32, @intCast(this.customMapArray[@intCast(0)].len))) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Array Incorrect"); break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn copyMapIntoCustomMap(self: *Self) void {
        const mapArray: [][]i32 = Inheritance.receiverOf(Inheritance.receiver(self.raceTrackGeographicMap.?, "getRaceTrackData").getRaceTrackData().?, "getMapArray").getMapArray();
        const startIndex2: i32 = @as(i32, @intCast(mapArray[@intCast(0)].len)) - 1;
        {
            var index: i32 = @as(i32, @intCast(mapArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            {
                var index2: i32 = startIndex2;
                while (index2 >= 0) : (index2 -= 1) {
                self.customMapArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(self.customMapArray[@intCast(index)][@intCast(index2)]), Inheritance.call(self, "getCustomType", .{ index2, index, mapArray[@intCast(index)][@intCast(index2)] }));
                }
            }
            }
        }
    }
    

    // throws Exception
    pub fn getCustomType(self: *Self, column: i32, row: i32, currentType: i32) i32 {
        const emptyType: i32 = self.geographicMapCellTypeFactory.?.getEmptyType();
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(self.raceTrackGeographicMap.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const cellPosition: ?*CellPosition = Inheritance.upcast(?*CellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row }));
        if (Inheritance.call(self.dropCellPositionHistory.?, "isCellPositionWithDrop", .{ cellPosition })) {
            const layer: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(self.dropCellPositionHistory.?, "getLayerInterface", .{ cellPosition }));
            if (Object.same(layer, AllBinaryLayer.NULL_ALLBINARY_LAYER)) {
                return emptyType;
            }
            const rtsLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, layer);
            if (!(Object.same(Inheritance.receiver(rtsLayer.?, "getType").getType(), WaypointLayer.getStaticType()))) {
                return emptyType;
            }
        }
        return currentType;
    }
    

    pub fn getCustomMapArray(self: *Self) [][]i32 {
        return self.customMapArray;
    }
};

