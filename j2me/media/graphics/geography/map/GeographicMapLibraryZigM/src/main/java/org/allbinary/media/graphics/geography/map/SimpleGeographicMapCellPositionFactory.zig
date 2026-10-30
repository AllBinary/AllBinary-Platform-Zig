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
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;

pub const SimpleGeographicMapCellPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory";
    pub const java_interfaces = .{ GeographicMapCellPositionFactoryInterface };
    // Implements GeographicMapCellPositionFactoryInterface
    pub var NULL_GEOGRAPHIC_MAP_CELL_POSITION: ?*GeographicMapCellPosition = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GEOGRAPHIC_MAP_CELL_POSITION = Inheritance.callStatic(GeographicMapCellPosition, "create6", .{ -1, -1, -1, -1, -1, -1 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, geographicMapInterface: ?*BasicGeographicMap, i_column: i32, i_row: i32, columns: i32, rows: i32, width: i32, height: i32) ?*GeographicMapCellPosition {
        _ = geographicMapInterface;
        _ = self;
        return Inheritance.callStatic(GeographicMapCellPosition, "create6", .{ i_column, i_row, columns, rows, width, height });
    }
};

