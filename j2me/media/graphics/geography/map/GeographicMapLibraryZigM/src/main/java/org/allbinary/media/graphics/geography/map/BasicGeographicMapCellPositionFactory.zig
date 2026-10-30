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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInitVisitorInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInitVisitorInterface.zig").GeographicMapCellPositionFactoryInitVisitorInterface;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;

pub const BasicGeographicMapCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory";
    logUtil: ?*LogUtil = null,
    geographicMapCellPositionArray: [][]?*GeographicMapCellPosition = &.{},
    geographicMapInterface: ?*BasicGeographicMap = null,
    geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface = null,
    columns: i32 = 0,
    rows: i32 = 0,
    tiledLayer: ?*AllBinaryTiledLayer = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
    }
    

    pub fn create1(geographicMapInterface: ?*BasicGeographicMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.geographicMapInterface = geographicMapInterface;
        this.geographicMapCellPositionFactoryInterface = Inheritance.upcast(@TypeOf(this.geographicMapCellPositionFactoryInterface), Inheritance.receiver(this.geographicMapInterface.?, "getGeographicMapCellPositionFactoryInterface").getGeographicMapCellPositionFactoryInterface());
        this.tiledLayer = Inheritance.upcast(@TypeOf(this.tiledLayer), Inheritance.receiver(this.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        this.columns = Inheritance.receiver(this.tiledLayer.?, "getColumns").getColumns();
        this.rows = Inheritance.receiver(this.tiledLayer.?, "getRows").getRows();
        this.geographicMapCellPositionArray = Inheritance.upcast(@TypeOf(this.geographicMapCellPositionArray), array_N66179: { const array_N66179_array = allocator.alloc([]?*GeographicMapCellPosition, @intCast(this.rows)) catch unreachable; for (array_N66179_array) |*array_N66179_row| { array_N66179_row.* = allocator.alloc(?*GeographicMapCellPosition, @intCast(this.columns)) catch unreachable; @memset(array_N66179_row.*, null); } break :array_N66179 array_N66179_array; });
        _ = this.init();
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        const tiledLayer: ?*AllBinaryTiledLayer = self.tiledLayer;
        const columns: i32 = self.getColumns();
        const rows: i32 = self.getRows();
        const width: i32 = Inheritance.receiver(tiledLayer.?, "getCellWidth").getCellWidth();
        const height: i32 = Inheritance.receiver(tiledLayer.?, "getCellHeight").getCellHeight();
        {
            var column: i32 = 0;
            while (column < columns) : (column += 1) {
            {
                var row: i32 = 0;
                while (row < rows) : (row += 1) {
                _ = Inheritance.call(self, "createInstance", .{ column, row, width, height });
                }
            }
            }
        }
    }
    

    // throws Exception
    pub fn visit(self: *Self, geographicMapCelPositionFactoryInitVisitorInterface: ?*GeographicMapCellPositionFactoryInitVisitorInterface) void {
        const tiledLayer: ?*AllBinaryTiledLayer = self.tiledLayer;
        const columns: i32 = self.getColumns();
        const rows: i32 = self.getRows();
        { // try
            var cellPosition: ?*GeographicMapCellPosition = null;
            {
                var column: i32 = 0;
                while (column < columns) : (column += 1) {
                {
                    var row: i32 = 0;
                    while (row < rows) : (row += 1) {
                    cellPosition = Inheritance.upcast(@TypeOf(cellPosition), Inheritance.call(self, "getAt", .{ column, row }));
                    _ = Inheritance.call(geographicMapCelPositionFactoryInitVisitorInterface.?, "visit", .{ tiledLayer, cellPosition });
                    }
                }
                }
            }
        }
        // catch (Exception e):
//             const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance()); _ = commonSeps;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ commonSeps.?.BRACKET_OPEN }).?, "appendint", .{ rows }).?, "append", .{ commonSeps.?.BRACKET_CLOSE }).?, "append", .{ commonSeps.?.BRACKET_OPEN }).?, "appendint", .{ columns }).?, "append", .{ commonSeps.?.BRACKET_CLOSE }))), self, String.literal("visit"), e });
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn getAt(self: *Self, i_column: i32, i_row: i32) ?*GeographicMapCellPosition {
        return Inheritance.upcast(?*GeographicMapCellPosition, self.geographicMapCellPositionArray[@intCast(i_row)][@intCast(i_column)]);
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, anotherMapGeographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellPosition {
        return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getAt", .{ Inheritance.receiver(anotherMapGeographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(anotherMapGeographicMapCellPosition.?, "getRow").getRow() }));
    }
    

    // throws Exception
    pub fn createInstance(self: *Self, i_column: i32, i_row: i32, width: i32, height: i32) ?*GeographicMapCellPosition {
        var cellPositionCanBeNull: ?Object = Inheritance.upcast(?Object, self.geographicMapCellPositionArray[@intCast(i_row)][@intCast(i_column)]);
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = Inheritance.upcast(@TypeOf(cellPositionCanBeNull), Inheritance.call(self.geographicMapCellPositionFactoryInterface.?, "getInstance", .{ self.geographicMapInterface, i_column, i_row, self.columns, self.rows, width, height }));
            self.geographicMapCellPositionArray[@intCast(i_row)][@intCast(i_column)] = Inheritance.cast(?*GeographicMapCellPosition, cellPositionCanBeNull);
        }
        return Inheritance.cast(?*GeographicMapCellPosition, cellPositionCanBeNull);
    }
    

    pub fn getColumns(self: *Self) i32 {
        return self.columns;
    }
    

    pub fn getRows(self: *Self) i32 {
        return self.rows;
    }
};

