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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;

pub const RaceTrackStartPointUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn get(geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, index: i32) ?*GPoint {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, pathFindingInfo.?.getStartPathFindingNodeList());
        const startPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(list.?, "get", .{ index }));
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, startPathFindingNode.?.geographicMapCellPosition);
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
        return Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ point.?.getX(), point.?.getY() + Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getHalfCellHeight").getHalfCellHeight() }));
    }
};

