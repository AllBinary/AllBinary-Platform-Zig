// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GeographicMapCellPositionAreaInterface = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaInterface.zig").GeographicMapCellPositionAreaInterface;

pub const GeographicMapCellPositionAreaBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.GeographicMapCellPositionAreaBase";
    pub const java_interfaces = .{ GeographicMapCellPositionAreaInterface };
    // Implements GeographicMapCellPositionAreaInterface
    pub var NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE: ?*GeographicMapCellPositionAreaBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GEOGRPAHIC_MAP_POSITION_AREA_BASE = GeographicMapCellPositionAreaBase.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getNextSurroundingGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getOccupyingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn update(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = geographicMapInterface;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

