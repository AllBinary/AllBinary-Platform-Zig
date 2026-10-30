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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GeographicPathFinderBase = @import("org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase.zig").GeographicPathFinderBase;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathGeneratorInterface = @import("org/allbinary/media/graphics/geography/pathfinding/PathGeneratorInterface.zig").PathGeneratorInterface;

pub const PathGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathGenerator";
    pub const java_interfaces = .{ PathGeneratorInterface };
    // Implements PathGeneratorInterface
    var SINGLETON: ?*PathGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = PathGenerator.create();
    }
    

    pub fn getInstance() ?*PathGenerator {
        return Inheritance.upcast(?*PathGenerator, PathGenerator.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, geographicMapInterface: ?Object, totalPaths: i32) void {
        _ = geographicMapInterface;
        _ = totalPaths;
        _ = self;
    }
    

    // throws Exception
    pub fn getInstanceNoCache(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
        const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "create", .{ geographicMapInterface, pathFindingInfo, totalPaths }));
        return geographicMapCellPositionBasicArrayList;
    }
    

    // throws Exception
    pub fn createList(self: *Self, geographicMapInterface: ?*BasicGeographicMap, geographicMapCellHistory: ?*GeographicMapCellHistory, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
        _ = geographicMapInterface;
        _ = geographicMapCellHistory;
        _ = pathFindingInfo;
        _ = totalPaths;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn create(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
        _ = geographicMapInterface;
        _ = self;
        const startPathFindingNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, pathFindingInfo.?.getStartPathFindingNodeList());
        const endPathFindingNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, pathFindingInfo.?.getEndPathFindingNodeList());
        const geographicPathFinderInterface: ?*GeographicPathFinderBase = Inheritance.upcast(?*GeographicPathFinderBase, pathFindingInfo.?.getPathFinder());
        const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(geographicPathFinderInterface.?, "searchTotalPath", .{ startPathFindingNodeList, endPathFindingNodeList, totalPaths }));
        return geographicMapCellPositionBasicArrayList;
    }
    

    // throws Exception
    pub fn createN(self: *Self, geographicMapInterface: ?*BasicGeographicMap, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32, multipassState: ?*MultipassState) ?*BasicArrayList {
        _ = geographicMapInterface;
        _ = self;
        const startPathFindingNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, pathFindingInfo.?.getStartPathFindingNodeList());
        const endPathFindingNodeList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, pathFindingInfo.?.getEndPathFindingNodeList());
        const geographicPathFinderInterface: ?*GeographicPathFinderBase = Inheritance.upcast(?*GeographicPathFinderBase, pathFindingInfo.?.getPathFinder());
        const geographicMapCellPositionBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(geographicPathFinderInterface.?, "searchTotalPathN", .{ startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState }));
        return geographicMapCellPositionBasicArrayList;
    }
    

    // throws Exception
    pub fn isValid(self: *Self, pathList: ?*BasicArrayList, geographicMapCellHistory: ?*GeographicMapCellHistory) bool {
        _ = pathList;
        _ = geographicMapCellHistory;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

