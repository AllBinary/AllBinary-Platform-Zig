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
const MultiGeographicMapBehavior = @import("org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior.zig").MultiGeographicMapBehavior;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GravityUtil = @import("org/allbinary/game/physics/acceleration/GravityUtil.zig").GravityUtil;
const VelocityProperties = @import("org/allbinary/game/physics/velocity/VelocityProperties.zig").VelocityProperties;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const GeographicMapTopViewLayerBehavior = @import("org/allbinary/game/behavior/topview/GeographicMapTopViewLayerBehavior.zig").GeographicMapTopViewLayerBehavior;
const TopViewCharacterInterface = @import("org/allbinary/game/behavior/topview/TopViewCharacterInterface.zig").TopViewCharacterInterface;

pub const GeographicMapTopViewGameLayerBehavior2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior2";
    base: GeographicMapTopViewLayerBehavior = undefined,
    gravityUtil: ?*GravityUtil = null,
    geographicMapBehavior: ?*MultiGeographicMapBehavior = null,
    autoStepBlocks: bool = false,
    offsetY: i32 = 0,
    previousGeographicMapCellPosition: ?*GeographicMapCellPosition = null,

    fn initFields(this: *Self) void {
        this.gravityUtil = Inheritance.upcast(?*GravityUtil, GravityUtil.getInstance());
        this.geographicMapBehavior = MultiGeographicMapBehavior.create();
        
        
        this.previousGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    pub fn create3(maxGravityActionIndex: i32, autoStepBlocks: bool, offsetY: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GeographicMapTopViewLayerBehavior, "create1", .{ maxGravityActionIndex }).*;
        this.initFields();
        this.autoStepBlocks = autoStepBlocks;
        this.offsetY = offsetY;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn gravity(self: *Self, velocityProperties: ?*VelocityProperties, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            _ = Inheritance.call(self.geographicMapBehavior.?, "getCellTypeAt", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition });
            const hasSolidBlock: bool = Inheritance.call(self, "hasSolidBlock", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
            if (!hasSolidBlock) {
                _ = Inheritance.call(self.gravityUtil.?, "process", .{ velocityProperties, self.gravityUtil.?.GAME_GRAVITY_VELOCITY });
                _ = velocityProperties.?.limitXYToForwardAndReverseMaxVelocity();
                _ = self.gravity();
            } else {
            }
        }
    }
    

    // throws Exception
    pub fn getPositionTopLeft(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP() + -x;
        const yCellPosition: i32 = layer.?.getYP() + -y;
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getPositionTopRight(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP() + -x + layer.?.getWidth();
        const yCellPosition: i32 = layer.?.getYP() + -y;
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getPositionBottomLeft(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP() + -x;
        const yCellPosition: i32 = layer.?.getYP() + -y + layer.?.getHeight();
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getPositionBottomRight(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP() + -x + layer.?.getWidth();
        const yCellPosition: i32 = layer.?.getYP() + -y + layer.?.getHeight();
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getLeftPosition(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP();
        const yCellPosition: i32 = layer.?.getYP() + layer.?.getHeight();
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getRightPosition(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, layer: ?*AllBinaryLayer) ?*GeographicMapCellPosition {
        _ = self;
        const xCellPosition: i32 = layer.?.getXP() + layer.?.getWidth();
        const yCellPosition: i32 = layer.?.getYP() + layer.?.getHeight();
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?, "getCellPositionAtXYNoThrow", .{ xCellPosition, yCellPosition }));
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) ?*GeographicMapCellPosition {
        var geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        const topLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getPositionTopLeft", .{ geographicMapInterfaceArray, layer, x, y }));
        geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(self, "getGeographicMapCellPositionIfNotSolidBlockOrOffMap", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties, layer }));
        if (Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        }
        const topRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getPositionTopRight", .{ geographicMapInterfaceArray, layer, x, y }));
        geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(self, "getGeographicMapCellPositionIfNotSolidBlockOrOffMap", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties, layer }));
        if (Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        }
        const bottomLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getPositionBottomLeft", .{ geographicMapInterfaceArray, layer, x, y }));
        geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(self, "getGeographicMapCellPositionIfNotSolidBlockOrOffMap", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties, layer }));
        if (Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        }
        const bottomRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getPositionBottomRight", .{ geographicMapInterfaceArray, layer, x, y }));
        geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(self, "getGeographicMapCellPositionIfNotSolidBlockOrOffMap", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties, layer }));
        if (Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
        } else {
        }
        return geographicMapCellPosition;
    }
    

    // throws Exception
    pub fn getGeographicMapCellPositionIfNotSolidBlockOrOffMap(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) ?*GeographicMapCellPosition {
        _ = velocityProperties;
        _ = layer;
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const possibleStepGeographicMapCellPosition: ?*GeographicMapCellPosition = geographicMapCellPosition;
            const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, geographicMapInterfaceArray[@intCast(0)].?.getAllBinaryTiledLayer());
            if (possibleStepGeographicMapCellPosition.?.getColumn() > 0 and possibleStepGeographicMapCellPosition.?.getRow() > 0 and possibleStepGeographicMapCellPosition.?.getColumn() < tiledLayer.?.getColumns() and possibleStepGeographicMapCellPosition.?.getRow() < tiledLayer.?.getRows()) {
                _ = Inheritance.call(self.geographicMapBehavior.?, "getCellTypeAt", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition });
                const hasSolidBlock: bool = Inheritance.call(self, "hasSolidBlock", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
                const hasOffMap: bool = Inheritance.call(self, "isOffMap", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
                if (hasSolidBlock or hasOffMap) {
                    self.previousGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.previousGeographicMapCellPosition), SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                    return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                } else {
                    self.previousGeographicMapCellPosition = possibleStepGeographicMapCellPosition;
                    return possibleStepGeographicMapCellPosition;
                }
            }
        } else {
        }
        self.previousGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.previousGeographicMapCellPosition), SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }
    

    // throws Exception
    pub fn moveAndLand(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) void {
        _ = velocityProperties;
        _ = self;
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const topViewCharacterInterface: ?*TopViewCharacterInterface = Inheritance.upcast(?*TopViewCharacterInterface, (Inheritance.cast(?*TopViewCharacterInterface, layer)));
            _ = Inheritance.call(topViewCharacterInterface.?, "terrainMove", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, x, y });
        } else {
        }
    }
    

    // throws Exception
    pub fn move(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer, x: i32, y: i32) bool {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y }));
        _ = Inheritance.call(self, "moveAndLand", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y });
        if (Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            return false;
        } else {
            return true;
        }
    }
    

    // throws Exception
    pub fn left(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getLeftPosition", .{ geographicMapInterfaceArray, layer }));
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const possibleStepGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?.getGeographicMapCellPositionFactory().?, "getAt", .{ geographicMapCellPosition.?.getColumn(), geographicMapCellPosition.?.getRow() - 1 }));
            _ = Inheritance.call(self.geographicMapBehavior.?, "getCellTypeAt", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition });
            const hasSolidBlock: bool = Inheritance.call(self, "hasSolidBlock", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
            if (hasSolidBlock) {
                if (self.autoStepBlocks) {
                    const topViewCharacterInterface: ?*TopViewCharacterInterface = Inheritance.upcast(?*TopViewCharacterInterface, (Inheritance.cast(?*TopViewCharacterInterface, layer)));
                    _ = topViewCharacterInterface.?.leftp();
                } else {
                    _ = Inheritance.call(velocityProperties.?.getVelocityXBasicDecimalP().?, "setint", .{ 0 });
                }
            } else {
                const topViewCharacterInterface: ?*TopViewCharacterInterface = Inheritance.upcast(?*TopViewCharacterInterface, (Inheritance.cast(?*TopViewCharacterInterface, layer)));
                _ = topViewCharacterInterface.?.leftp();
            }
        }
    }
    

    // throws Exception
    pub fn right(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, velocityProperties: ?*VelocityProperties, layer: ?*AllBinaryLayer) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getRightPosition", .{ geographicMapInterfaceArray, layer }));
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const possibleStepGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterfaceArray[@intCast(0)].?.getGeographicMapCellPositionFactory().?, "getAt", .{ geographicMapCellPosition.?.getColumn(), geographicMapCellPosition.?.getRow() - 1 }));
            _ = Inheritance.call(self.geographicMapBehavior.?, "getCellTypeAt", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition });
            const hasSolidBlock: bool = Inheritance.call(self, "hasSolidBlock", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
            if (hasSolidBlock) {
                if (self.autoStepBlocks) {
                    const topViewCharacterInterface: ?*TopViewCharacterInterface = Inheritance.upcast(?*TopViewCharacterInterface, (Inheritance.cast(?*TopViewCharacterInterface, layer)));
                    _ = topViewCharacterInterface.?.rightp();
                } else {
                    _ = Inheritance.call(velocityProperties.?.getVelocityXBasicDecimalP().?, "setint", .{ 0 });
                }
            } else {
                const topViewCharacterInterface: ?*TopViewCharacterInterface = Inheritance.upcast(?*TopViewCharacterInterface, (Inheritance.cast(?*TopViewCharacterInterface, layer)));
                _ = topViewCharacterInterface.?.rightp();
            }
        }
    }
};

