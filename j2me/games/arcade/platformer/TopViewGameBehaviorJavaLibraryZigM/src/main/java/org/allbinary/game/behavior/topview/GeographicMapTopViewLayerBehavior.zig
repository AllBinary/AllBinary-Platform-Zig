// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const BasicTopViewGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/topview/BasicTopViewGeographicMapCellTypeFactory.zig").BasicTopViewGeographicMapCellTypeFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const TopViewGameLayerBehavior = @import("org/allbinary/game/behavior/topview/TopViewGameLayerBehavior.zig").TopViewGameLayerBehavior;

pub const GeographicMapTopViewLayerBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior";
    base: TopViewGameLayerBehavior = undefined,
    

    pub fn create1(maxGravityActionIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TopViewGameLayerBehavior, "create1", .{ maxGravityActionIndex }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = velocityProperties;
        _ = layer;
        _ = x;
        _ = y;
        _ = self;
        return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionIfNotSolidBlockOrOffMap(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) ?*GeographicMapCellPosition {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = geographicMapCellPosition;
        _ = velocityProperties;
        _ = layer;
        _ = self;
        return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPositionList: ?*BasicArrayList, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) ?*GeographicMapCellPosition {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = geographicMapCellPositionList;
        _ = velocityProperties;
        _ = layer;
        _ = self;
        return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    // throws Exception
    pub fn gravity(self: *Self, velocityProperties: ?*VelocityProperties, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = velocityProperties;
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = geographicMapCellPosition;
        _ = self;
    }
    

    // throws Exception
    pub fn left(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) void {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = velocityProperties;
        _ = layer;
        _ = self;
    }
    

    // throws Exception
    pub fn move(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) bool {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = velocityProperties;
        _ = layer;
        _ = x;
        _ = y;
        _ = self;
        return false;
    }
    

    // throws Exception
    pub fn moveAndLand(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) void {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = geographicMapCellPosition;
        _ = velocityProperties;
        _ = layer;
        _ = x;
        _ = y;
        _ = self;
    }
    

    // throws Exception
    pub fn right(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) void {
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellTypeArray;
        _ = velocityProperties;
        _ = layer;
        _ = self;
    }
    

    pub fn hasSolidBlock(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType) bool {
        _ = self;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        var basicTopViewGeographicMapCellTypeFactory: ?*BasicTopViewGeographicMapCellTypeFactory = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            basicTopViewGeographicMapCellTypeFactory = Inheritance.cast(?*BasicTopViewGeographicMapCellTypeFactory, geographicMapInterfaceArray[@intCast(index)].?.getGeographicMapCellTypeFactory());
            if (Inheritance.call(basicTopViewGeographicMapCellTypeFactory.?.BLOCK_CELL_TYPE.?, "isType", .{ geographicMapCellTypeArray[@intCast(index)] })) {
                return true;
            }
            }
        }
        return false;
    }
    

    pub fn isOffMap(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType) bool {
        _ = self;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        var basicTopViewGeographicMapCellTypeFactory: ?*BasicTopViewGeographicMapCellTypeFactory = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            basicTopViewGeographicMapCellTypeFactory = Inheritance.cast(?*BasicTopViewGeographicMapCellTypeFactory, geographicMapInterfaceArray[@intCast(index)].?.getGeographicMapCellTypeFactory());
            if (Inheritance.call(basicTopViewGeographicMapCellTypeFactory.?.OFF_MAP_CELL_TYPE.?, "isType", .{ geographicMapCellTypeArray[@intCast(index)] })) {
                return true;
            }
            }
        }
        return false;
    }
};

