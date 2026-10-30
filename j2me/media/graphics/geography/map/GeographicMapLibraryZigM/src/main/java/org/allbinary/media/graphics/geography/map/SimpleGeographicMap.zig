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
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const SimpleGeographicMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.SimpleGeographicMap";
    commonStrings: ?*CommonStrings = null,
    id: ?*Integer = null,
    name: ?*String = null,
    cellTypeIdToGeographicMapCellType: []i32 = &.{},
    tiledLayer: ?*AllBinaryTiledLayer = null,
    foregroundBasicColor: ?*BasicColor = null,
    backgroundBasicColor: ?*BasicColor = null,
    geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = null,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
        
        this.foregroundBasicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.NULL_COLOR);
        this.backgroundBasicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.NULL_COLOR);
        this.geographicMapCellTypeFactory = Inheritance.upcast(?*GeographicMapCellTypeFactory, GeographicMapCellTypeFactory.getInstance());
    }
    

    pub fn create6(id: ?*Integer, name: ?*String, cellTypeIdToGeographicMapCellType: []i32, tiledLayer: ?*AllBinaryTiledLayer, foregroundBasicColor: ?*BasicColor, backgroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = id;
        this.name = name;
        this.cellTypeIdToGeographicMapCellType = cellTypeIdToGeographicMapCellType;
        this.tiledLayer = tiledLayer;
        _ = Inheritance.call(this, "setBackgroundBasicColor", .{ backgroundBasicColor });
        _ = Inheritance.call(this, "setForegroundBasicColor", .{ foregroundBasicColor });
        return this;
    }
    

    pub fn getId(self: *Self) ?*Integer {
        return self.id;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
    }
    

    pub fn getAllBinaryTiledLayer(self: *Self) ?*AllBinaryTiledLayer {
        return self.tiledLayer;
    }
    

    // throws Exception
    pub fn getCellTypeAt(self: *Self, cellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellType {
        const i_column: i32 = Inheritance.receiver(cellPosition.?, "getColumn").getColumn();
        const i_row: i32 = Inheritance.receiver(cellPosition.?, "getRow").getRow();
        var cellTypeId: i32 = Inheritance.call(self.tiledLayer.?, "getCell", .{ i_column, i_row });
        if (cellTypeId < 0) {
            cellTypeId = Inheritance.call(self.tiledLayer.?, "getAnimatedTile", .{ cellTypeId });
        }
        return Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(self.geographicMapCellTypeFactory.?, "get", .{ self.cellTypeIdToGeographicMapCellType[@intCast(cellTypeId)] }));
    }
    

    pub fn getCellTypeFromMapCellTypeInt(self: *Self, cellTypeId: i32) i32 {
        return self.cellTypeIdToGeographicMapCellType[@intCast(cellTypeId)];
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
};

