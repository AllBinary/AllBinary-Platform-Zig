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
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionBaseFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory.zig").GeographicMapCellPositionBaseFactory;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const GeographicMapInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapInterface.zig").GeographicMapInterface;
const SimpleGeographicMap = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMap.zig").SimpleGeographicMap;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicGeographicMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.BasicGeographicMap";
    pub const java_interfaces = .{ GeographicMapInterface };
    base: SimpleGeographicMap = undefined,
    mathUtil: ?*MathUtil = null,
    geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = null,
    geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface = null,
    geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory = null,
    // Implements GeographicMapInterface
    pub var NULL_BASIC_GEOGRAPHIC_MAP_ARRAY: []?*BasicGeographicMap = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASIC_GEOGRAPHIC_MAP_ARRAY = array_N65778: { const array_N65778_array = allocator.alloc(?*BasicGeographicMap, @intCast(0)) catch unreachable; @memset(array_N65778_array, null); break :array_N65778 array_N65778_array; };
    }

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        
        
        
    }
    

    pub fn create9(id: ?*Integer, name: ?*String, cellTypeIdToGeographicMapCellType: []i32, tiledLayer: ?*AllBinaryTiledLayer, foregroundBasicColor: ?*BasicColor, backgroundBasicColor: ?*BasicColor, geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory: ?*GeographicMapCellPositionBaseFactory, geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SimpleGeographicMap, "create6", .{ id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor }).*;
        this.initFields();
        this.geographicMapCellPositionFactoryInterface = geographicMapCellPositionFactoryInterface;
        this.geographicMapCellPositionFactory = Inheritance.upcast(@TypeOf(this.geographicMapCellPositionFactory), Inheritance.call(geographicMapCellPositionBaseFactory.?, "getInstance", .{ this }));
        this.geographicMapCellTypeFactory = geographicMapCellTypeFactory;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getCellPosition(self: *Self, direction: i32, oldGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        switch (direction) {
            0 => {
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() - 1, Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() }));
            },
            1 => {
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() + 1, Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() }));
            },
            2 => {
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() - 1 }));
            },
            3 => {
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() + 1 }));
            },
            else => {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Only Four Directions"); break :exception error.Exception; }});
            },
        }
    }
    

    // throws Exception
    pub fn getCellPositionNoThrow(self: *Self, direction: i32, oldGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        switch (direction) {
            0 => {
                if (Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() - 1 >= 0) {
                    return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() - 1, Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() }));
                } else {
                    return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                }
            },
            1 => {
                if (Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() + 1 < Inheritance.receiverOf(Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getColumns").getColumns()) {
                    return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() + 1, Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() }));
                } else {
                    return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                }
            },
            2 => {
                if (Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() - 1 >= 0) {
                    return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() - 1 }));
                } else {
                    return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                }
            },
            3 => {
                if (Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() + 1 < Inheritance.receiverOf(Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getRows").getRows()) {
                    return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() + 1 }));
                } else {
                    return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                }
            },
            else => {
                return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
            },
        }
    }
    

    // throws Exception
    pub fn isOfFourDirections(self: *Self, oldGeographicMapCellPosition: ?*GeographicMapCellPosition, newGeographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        {
            var index: i32 = 0;
            while (index < 4) : (index += 1) {
            if (Object.same(newGeographicMapCellPosition, Inheritance.call(self, "getCellPositionNoThrow", .{ index, oldGeographicMapCellPosition }))) {
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn getCellPositionAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const i_column: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(x, Inheritance.receiver(allBinaryTiledLayer.?, "getCellHeight").getCellHeight()) });
        const i_row: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(y, Inheritance.receiver(allBinaryTiledLayer.?, "getCellWidth").getCellWidth()) });
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ i_column, i_row }));
    }
    

    pub fn getCellPositionAtXYNoThrow(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const i_column: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(x, Inheritance.receiver(allBinaryTiledLayer.?, "getCellHeight").getCellHeight()) });
        const i_row: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(y, Inheritance.receiver(allBinaryTiledLayer.?, "getCellWidth").getCellWidth()) });
        if (Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() > i_column and Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() > i_row) {
            { // try
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ i_column, i_row }));
            }
            // catch (Exception e):
//                 return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        } else {
            return Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        }
    }
    

    // throws Exception
    pub fn isOnMap(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const i_column: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn();
        const i_row: i32 = Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow();
        if (Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() > i_column and Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() > i_row) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn getCellPositionAtNoThrow(self: *Self, x: i32, y: i32, x2: i32, y2: i32, geographicMapCellPositionList: ?*BasicArrayList) ?*BasicArrayList {
        _ = geographicMapCellPositionList.?.clear();
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const i_columnMin: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(x, Inheritance.receiver(allBinaryTiledLayer.?, "getCellHeight").getCellHeight()) });
        const i_rowMin: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(y, Inheritance.receiver(allBinaryTiledLayer.?, "getCellWidth").getCellWidth()) });
        const i_columnMax: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(x2, Inheritance.receiver(allBinaryTiledLayer.?, "getCellHeight").getCellHeight()) }) + 1;
        const i_rowMax: i32 = Inheritance.call(self.mathUtil.?, "abs", .{ @divTrunc(y2, Inheritance.receiver(allBinaryTiledLayer.?, "getCellWidth").getCellWidth()) }) + 1;
        {
            var columnIndex: i32 = i_columnMin;
            while (columnIndex < i_columnMax) : (columnIndex += 1) {
            {
                var rowIndex: i32 = i_rowMin;
                while (rowIndex < i_rowMax) : (rowIndex += 1) {
                if (Inheritance.receiver(allBinaryTiledLayer.?, "getColumns").getColumns() > columnIndex and Inheritance.receiver(allBinaryTiledLayer.?, "getRows").getRows() > rowIndex) {
                    _ = Inheritance.call(geographicMapCellPositionList.?, "add", .{ Inheritance.call(self.geographicMapCellPositionFactory.?, "getAt", .{ columnIndex, rowIndex }) });
                }
                }
            }
            }
        }
        return geographicMapCellPositionList;
    }
    

    // throws Exception
    pub fn getCellPositionsAt(self: *Self, layer: ?*Layer, currentCellPositionArray: [][]?*GeographicMapCellPosition, cellPositionArray: [][]?*GeographicMapCellPosition) bool {
        var hasChanged: bool = false;
        const size: i32 = @as(i32, @intCast(cellPositionArray.len));
        const size2: i32 = @as(i32, @intCast(cellPositionArray[@intCast(0)].len));
        const xPortion: i32 = (divide_N70010: { const left_N70010 = layer.?.getXP(); const right_N70010 = (size - 1); break :divide_N70010 if (comptime @typeInfo(@TypeOf(left_N70010)) == .int or @TypeOf(left_N70010) == comptime_int) @divTrunc(left_N70010, right_N70010) else left_N70010 / right_N70010; });
        const yPortion: i32 = (divide_N70082: { const left_N70082 = layer.?.getYP(); const right_N70082 = (size - 1); break :divide_N70082 if (comptime @typeInfo(@TypeOf(left_N70082)) == .int or @TypeOf(left_N70082) == comptime_int) @divTrunc(left_N70082, right_N70082) else left_N70082 / right_N70082; });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            {
                var index2: i32 = 0;
                while (index2 < size2) : (index2 += 1) {
                const x: i32 = xPortion * index;
                const y: i32 = yPortion * index;
                cellPositionArray[@intCast(index)][@intCast(index2)] = Inheritance.upcast(@TypeOf(cellPositionArray[@intCast(index)][@intCast(index2)]), Inheritance.call(self, "getCellPositionAtXY", .{ x, y }));
                if (!Object.same(currentCellPositionArray[@intCast(index)][@intCast(index2)], cellPositionArray[@intCast(index)][@intCast(index2)])) {
                    hasChanged = true;
                }
                }
            }
            }
        }
        return hasChanged;
    }
    

    // throws Exception
    pub fn getCellTypeAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellType {
        const cellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getCellPositionAtXY", .{ x, y }));
        return Inheritance.upcast(?*GeographicMapCellType, Inheritance.call(self, "getCellTypeAt", .{ cellPosition }));
    }
    

    pub fn getGeographicMapCellPositionFactory(self: *Self) ?*BasicGeographicMapCellPositionFactory {
        return self.geographicMapCellPositionFactory;
    }
    

    pub fn getGeographicMapCellPositionFactoryInterface(self: *Self) ?*GeographicMapCellPositionFactoryInterface {
        return self.geographicMapCellPositionFactoryInterface;
    }
    

    pub fn getGeographicMapCellTypeFactory(self: *Self) ?*GeographicMapCellTypeFactory {
        return self.geographicMapCellTypeFactory;
    }
};

