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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const PathFindingNodeCostInfoFactoryBaseInterface = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBaseInterface.zig").PathFindingNodeCostInfoFactoryBaseInterface;

pub const PathFindingNodeCostInfoFactoryBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase";
    pub const java_interfaces = .{ PathFindingNodeCostInfoFactoryBaseInterface };
    // Implements PathFindingNodeCostInfoFactoryBaseInterface
    pub var NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE: ?*PathFindingNodeCostInfoFactoryBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE = PathFindingNodeCostInfoFactoryBase.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn create(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void {
        _ = geographicMapInterface;
        _ = comingFromGeographicMapCellPosition;
        _ = geographicMapCellPosition;
        _ = costFromStart;
        _ = costToEnd;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getTotalCost(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
        _ = geographicMapInterface;
        _ = comingFromGeographicMapCellPosition;
        _ = geographicMapCellPosition;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

