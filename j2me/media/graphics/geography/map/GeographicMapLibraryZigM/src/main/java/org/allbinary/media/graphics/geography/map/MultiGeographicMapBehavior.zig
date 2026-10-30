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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;

pub const MultiGeographicMapBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getCellTypeAt(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) []?*GeographicMapCellType {
        _ = self;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        var cellType: ?*GeographicMapCellType = Inheritance.upcast(?*GeographicMapCellType, GeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE);
        {
            var index: i32 = size;
            while (value_N65803: { index -= 1; break :value_N65803 index; } >= 0) {
            cellType = Inheritance.upcast(@TypeOf(cellType), Inheritance.call(geographicMapInterfaceArray[@intCast(index)].?, "getCellTypeAt", .{ geographicMapCellPosition }));
            geographicMapCellTypeArray[@intCast(index)] = Inheritance.upcast(@TypeOf(geographicMapCellTypeArray[@intCast(index)]), cellType);
            }
        }
        return geographicMapCellTypeArray;
    }
};

