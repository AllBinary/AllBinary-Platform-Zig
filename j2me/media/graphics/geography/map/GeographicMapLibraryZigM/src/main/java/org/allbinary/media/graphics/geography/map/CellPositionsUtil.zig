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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

pub const CellPositionsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.CellPositionsUtil";
    reusableSingleThreadedSurroundingList: ?*BasicArrayList = null,
    surroundArray: [][]i32 = &.{},
    var instance: ?*CellPositionsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CellPositionsUtil.create();
    }

    fn initFields(this: *Self) void {
        this.reusableSingleThreadedSurroundingList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 8 }));
        this.surroundArray = @constCast(&[_][]i32{ @constCast(&[_]i32{ -1, -1 })[0..], @constCast(&[_]i32{ 0, -1 })[0..], @constCast(&[_]i32{ 1, -1 })[0..], @constCast(&[_]i32{ -1, 1 })[0..], @constCast(&[_]i32{ 0, 1 })[0..], @constCast(&[_]i32{ 1, 1 })[0..], @constCast(&[_]i32{ 1, 0 })[0..], @constCast(&[_]i32{ -1, 0 })[0..] })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CellPositionsUtil {
        return Inheritance.upcast(?*CellPositionsUtil, CellPositionsUtil.instance);
    }
    

    // throws Exception
    pub fn getAll(self: *Self, geographicMapInterface: ?*BasicGeographicMap, topRightGeographicMapCellPosition: ?*GeographicMapCellPosition, columns: i32, rows: i32, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        _ = self;
        _ = reusableList.?.clear();
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const lastColumn: i32 = Inheritance.receiver(topRightGeographicMapCellPosition.?, "getColumn").getColumn() + columns;
        const lastRow: i32 = Inheritance.receiver(topRightGeographicMapCellPosition.?, "getRow").getRow() + rows;
        if ((columns > 1 and lastColumn > Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getColumns").getColumns()) or (rows > 1 and lastRow > Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getRows").getRows())) {
            return reusableList;
        }
        {
            var rowIndex: i32 = 0;
            while (rowIndex < rows) : (rowIndex += 1) {
            {
                var columnIndex: i32 = 0;
                while (columnIndex < columns) : (columnIndex += 1) {
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(topRightGeographicMapCellPosition.?, "getColumn").getColumn() + columnIndex, Inheritance.receiver(topRightGeographicMapCellPosition.?, "getRow").getRow() + rowIndex }));
                _ = Inheritance.call(reusableList.?, "add", .{ geographicMapCellPosition });
                }
            }
            }
        }
        return reusableList;
    }
    

    // throws Exception
    pub fn getAllSurrounding(self: *Self, geographicMapInterface: ?*BasicGeographicMap, occupyList: ?*BasicArrayList, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        _ = reusableList.?.clear();
        {
            var index: i32 = occupyList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const layerGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(occupyList.?, "get", .{ index }));
            const surroundingGeographicMapCellPositionList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getAllSurroundingAt", .{ geographicMapInterface, layerGeographicMapCellPosition, self.reusableSingleThreadedSurroundingList }));
            {
                var index2: i32 = surroundingGeographicMapCellPositionList.?.size() - 1;
                while (index2 >= 0) : (index2 -= 1) {
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(surroundingGeographicMapCellPositionList.?, "get", .{ index2 }));
                if (!Inheritance.call(reusableList.?, "contains", .{ geographicMapCellPosition }) and !Inheritance.call(occupyList.?, "contains", .{ geographicMapCellPosition })) {
                    _ = Inheritance.call(reusableList.?, "add", .{ geographicMapCellPosition });
                }
                }
            }
            }
        }
        return reusableList;
    }
    

    // throws Exception
    pub fn getAllSurroundingAt(self: *Self, geographicMapInterface: ?*BasicGeographicMap, layerGeographicMapCellPosition: ?*GeographicMapCellPosition, reusableSurroundingList: ?*BasicArrayList) ?*BasicArrayList {
        _ = reusableSurroundingList.?.clear();
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(geographicMapInterface.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        var row: i32 = 0;
        var column: i32 = 0;
        {
            var index: i32 = 0;
            while (index < 8) : (index += 1) {
            column = Inheritance.receiver(layerGeographicMapCellPosition.?, "getColumn").getColumn() + self.surroundArray[@intCast(index)][@intCast(0)];
            row = Inheritance.receiver(layerGeographicMapCellPosition.?, "getRow").getRow() + self.surroundArray[@intCast(index)][@intCast(1)];
            if (Inheritance.call(tiledLayer.?, "isOnTileLayer", .{ column, row })) {
                const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row }));
                _ = Inheritance.call(reusableSurroundingList.?, "add", .{ geographicMapCellPosition });
            }
            }
        }
        return reusableSurroundingList;
    }
};

