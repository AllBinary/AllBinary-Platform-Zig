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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameCanvasInterface = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.zig").AllBinaryGameCanvasInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;

pub const GeographicMapCellPositionTracking = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking";
    currentGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    previousGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    newGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    currentCellType: ?*GeographicMapCellType = null,

    fn initFields(this: *Self) void {
        this.currentGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.previousGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.newGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.currentCellType = Inheritance.upcast(?*GeographicMapCellType, GeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getCurrentOverCellType(self: *Self, geographicMap: ?*BasicGeographicMap) ?*GeographicMapCellType {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = self.currentGeographicMapCellPosition;
        if (!Object.same(geographicMapCellPosition, self.previousGeographicMapCellPosition)) {
            self.currentCellType = Inheritance.upcast(@TypeOf(self.currentCellType), Inheritance.call(geographicMap.?, "getCellTypeAt", .{ geographicMapCellPosition }));
        }
        return self.currentCellType;
    }
    

    // throws Exception
    pub fn updateStart(self: *Self, gameCanvasInterface: ?*AllBinaryGameCanvasInterface, layer: ?*AllBinaryLayer) bool {
        if (!Object.same(gameCanvasInterface, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(gameCanvasInterface.?, "getLayerManager").getLayerManager());
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            self.newGeographicMapCellPosition = Inheritance.upcast(@TypeOf(self.newGeographicMapCellPosition), Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ Inheritance.receiver(layer.?, "getXP").getXP() + Inheritance.receiver(layer.?, "getHalfWidth").getHalfWidth(), Inheritance.receiver(layer.?, "getYP").getYP() + Inheritance.receiver(layer.?, "getHalfHeight").getHalfHeight() }));
            if (!Object.same(self.newGeographicMapCellPosition, self.currentGeographicMapCellPosition)) {
                self.currentGeographicMapCellPosition = self.newGeographicMapCellPosition;
                return true;
            }
        }
        return false;
    }
    

    pub fn updateEnd(self: *Self) bool {
        if (!Object.same(self.currentGeographicMapCellPosition, self.previousGeographicMapCellPosition)) {
            self.previousGeographicMapCellPosition = self.currentGeographicMapCellPosition;
            return true;
        }
        return false;
    }
    

    pub fn getPreviousGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.previousGeographicMapCellPosition;
    }
    

    pub fn getCurrentGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.currentGeographicMapCellPosition;
    }
};

