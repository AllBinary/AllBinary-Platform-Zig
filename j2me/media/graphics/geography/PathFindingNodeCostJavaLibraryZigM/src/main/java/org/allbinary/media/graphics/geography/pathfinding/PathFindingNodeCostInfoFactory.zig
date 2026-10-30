//
// AllBinary Open License Version 1
// Copyright (c) 2006 AllBinary
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
const PathFindingNodeCostInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo.zig").PathFindingNodeCostInfo;
const PathFindingNodeCostInfoFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase.zig").PathFindingNodeCostInfoFactoryBase;

pub const PathFindingNodeCostInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory";
    base: PathFindingNodeCostInfoFactoryBase = undefined,
    pathFindingNodeCostInfoAdjacencyList: [][]?*PathFindingNodeCostInfo = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(max: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PathFindingNodeCostInfoFactoryBase.create().*;
        this.initFields();
        this.pathFindingNodeCostInfoAdjacencyList = Inheritance.upcast(@TypeOf(this.pathFindingNodeCostInfoAdjacencyList), array_N65758: { const array_N65758_array = allocator.alloc([]?*PathFindingNodeCostInfo, @intCast(max)) catch unreachable; for (array_N65758_array) |*array_N65758_row| { array_N65758_row.* = allocator.alloc(?*PathFindingNodeCostInfo, @intCast(max)) catch unreachable; @memset(array_N65758_row.*, null); } break :array_N65758 array_N65758_array; });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn create(self: *Self, geographicMapInterface: ?*BasicGeographicMap, goingToGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void {
        _ = geographicMapInterface;
        _ = Inheritance.call(self, "getInstance", .{ goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd });
    }
    

    // throws Exception
    pub fn getInstance4(self: *Self, goingToGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) ?*PathFindingNodeCostInfo {
        var pathFindingNodeCostInfo: ?*PathFindingNodeCostInfo = Inheritance.upcast(?*PathFindingNodeCostInfo, Inheritance.call(self, "getInstance", .{ goingToGeographicMapCellPosition, geographicMapCellPosition }));
        if (pathFindingNodeCostInfo == null) {
            pathFindingNodeCostInfo = Inheritance.callStatic(PathFindingNodeCostInfo, "create2", .{ costFromStart, costToEnd });
            _ = pathFindingNodeCostInfo.?.setCalculatedTotalCost();
            self.pathFindingNodeCostInfoAdjacencyList[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getId").getId())][@intCast(Inheritance.receiver(goingToGeographicMapCellPosition.?, "getId").getId())] = Inheritance.upcast(@TypeOf(self.pathFindingNodeCostInfoAdjacencyList[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getId").getId())][@intCast(Inheritance.receiver(goingToGeographicMapCellPosition.?, "getId").getId())]), pathFindingNodeCostInfo);
        } else {
            _ = Inheritance.call(pathFindingNodeCostInfo.?, "setCostFromStart", .{ costFromStart });
            _ = Inheritance.call(pathFindingNodeCostInfo.?, "setCostToEnd", .{ costToEnd });
            _ = pathFindingNodeCostInfo.?.setCalculatedTotalCost();
        }
        return pathFindingNodeCostInfo;
    }
    

    pub fn getInstance(self: *Self, goingToFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingNodeCostInfo {
        return Inheritance.upcast(?*PathFindingNodeCostInfo, self.pathFindingNodeCostInfoAdjacencyList[@intCast(Inheritance.receiver(geographicMapCellPosition.?, "getId").getId())][@intCast(Inheritance.receiver(goingToFromGeographicMapCellPosition.?, "getId").getId())]);
    }
    

    pub fn getTotalCost(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
        _ = geographicMapInterface;
        return Inheritance.call(self, "getInstance", .{ comingFromGeographicMapCellPosition, geographicMapCellPosition }).?.totalCostP;
    }
};

