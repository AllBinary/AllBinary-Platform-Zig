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
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const RaceTrackData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData";
    tileSetImage: ?*Image = null,
    miniTileSetImage: ?*Image = null,
    cellWidth: i32 = 0,
    cellHeight: i32 = 0,
    miniCellWidth: i32 = 0,
    miniCellHeight: i32 = 0,
    mapArray: [][]i32 = &.{},
    cellTypeIdToGeographicMapCellTypeArray: []i32 = &.{},
    NO_OVER_PASSES_ARRAY: []?*CellPosition = &.{},
    overPassGeographicMapCellPositionArray: []?*CellPosition = &.{},
    id: ?*Integer = null,

    fn initFields(this: *Self) void {
        this.tileSetImage = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        this.miniTileSetImage = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        this.cellWidth = 0;
        this.cellHeight = 0;
        this.miniCellWidth = 0;
        this.miniCellHeight = 0;
        this.mapArray = NullUtil.getInstance().?.NULL_INT_ARRAY_ARRAY;
        this.cellTypeIdToGeographicMapCellTypeArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
        this.NO_OVER_PASSES_ARRAY = array_N66044: { const array_N66044_array = allocator.alloc(?*CellPosition, @intCast(0)) catch unreachable; @memset(array_N66044_array, null); break :array_N66044 array_N66044_array; };
        this.overPassGeographicMapCellPositionArray = this.NO_OVER_PASSES_ARRAY;
        
    }
    

    pub fn create7(id: ?*Integer, cellWidth: i32, cellHeight: i32, miniCellWidth: i32, miniCellHeight: i32, cellTypeIdToGeographicMapCellTypeArray: []i32, mapArray: [][]i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = id;
        this.cellWidth = cellWidth;
        this.cellHeight = cellHeight;
        this.miniCellWidth = miniCellWidth;
        this.miniCellHeight = miniCellHeight;
        this.mapArray = mapArray;
        this.cellTypeIdToGeographicMapCellTypeArray = cellTypeIdToGeographicMapCellTypeArray;
        return this;
    }
    

    pub fn setMapArray(self: *Self, mapArray: [][]i32) void {
        self.mapArray = mapArray;
    }
    

    pub fn getMapArray(self: *Self) [][]i32 {
        return self.mapArray;
    }
    

    pub fn setCellTypeIdToGeographicMapCellTypeArray(self: *Self, cellTypeIdToGeographicMapCellTypeArray: []i32) void {
        self.cellTypeIdToGeographicMapCellTypeArray = cellTypeIdToGeographicMapCellTypeArray;
    }
    

    pub fn getCellTypeIdToGeographicMapCellTypeArray(self: *Self) []i32 {
        return self.cellTypeIdToGeographicMapCellTypeArray;
    }
    

    pub fn setCellWidth(self: *Self, cellWidth: i32) void {
        self.cellWidth = cellWidth;
    }
    

    pub fn getCellWidth(self: *Self) i32 {
        return self.cellWidth;
    }
    

    pub fn setCellHeight(self: *Self, cellHeight: i32) void {
        self.cellHeight = cellHeight;
    }
    

    pub fn getCellHeight(self: *Self) i32 {
        return self.cellHeight;
    }
    

    pub fn getOverPassGeographicMapCellPositionArray(self: *Self) []?*CellPosition {
        return self.overPassGeographicMapCellPositionArray;
    }
    

    pub fn setOverPassGeographicMapCellPositionArray(self: *Self, overPassGeographicMapCellPositionArray: []?*CellPosition) void {
        self.overPassGeographicMapCellPositionArray = overPassGeographicMapCellPositionArray;
    }
    

    pub fn getTileSetImage(self: *Self) ?*Image {
        return self.tileSetImage;
    }
    

    pub fn setTileSetImage(self: *Self, tileSetImage: ?*Image) void {
        self.tileSetImage = tileSetImage;
    }
    

    pub fn getMiniTileSetImage(self: *Self) ?*Image {
        return self.miniTileSetImage;
    }
    

    pub fn setMiniTileSetImage(self: *Self, miniTileSetImage: ?*Image) void {
        self.miniTileSetImage = miniTileSetImage;
    }
    

    pub fn getMiniCellWidth(self: *Self) i32 {
        return self.miniCellWidth;
    }
    

    pub fn setMiniCellWidth(self: *Self, miniCellWidth: i32) void {
        self.miniCellWidth = miniCellWidth;
    }
    

    pub fn getMiniCellHeight(self: *Self) i32 {
        return self.miniCellHeight;
    }
    

    pub fn setMiniCellHeight(self: *Self, miniCellHeight: i32) void {
        self.miniCellHeight = miniCellHeight;
    }
    

    pub fn setId(self: *Self, id: ?*Integer) void {
        self.id = id;
    }
    

    pub fn getId(self: *Self) ?*Integer {
        return self.id;
    }
};

