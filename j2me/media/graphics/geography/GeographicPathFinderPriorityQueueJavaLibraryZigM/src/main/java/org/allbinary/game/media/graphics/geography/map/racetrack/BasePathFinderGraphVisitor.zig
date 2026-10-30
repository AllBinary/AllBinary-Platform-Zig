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
// package org.allbinary.game.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const PathFinderGraphVisitorBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase.zig").PathFinderGraphVisitorBase;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

//1.4.2
pub const BasePathFinderGraphVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor";
    base: PathFinderGraphVisitorBase = undefined,
    geographicMapInterface: ?*BasicGeographicMap = null,
    edgeMinimum: i32 = 0,
    minPathWeight: i32 = 0,
    maxPathWeight: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(geographicMapInterface: ?*BasicGeographicMap, edgeMinimum: i32, minPathWeight: i32, maxPathWeight: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PathFinderGraphVisitorBase.create().*;
        this.initFields();
        this.geographicMapInterface = geographicMapInterface;
        this.edgeMinimum = edgeMinimum;
        this.minPathWeight = minPathWeight;
        this.maxPathWeight = maxPathWeight;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, graph: ?Object, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList) void {
        _ = graph;
        _ = startPathFindingNodeList;
        _ = endPathFindingNodeList;
        _ = self;
    }
    

    // throws Exception
    pub fn fixPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, pathList: ?*BasicArrayList) void {
        _ = endPathFindingNodeList;
        _ = self;
        var startPathFindingNode: ?*PathFindingNode = null;
        {
            var index: i32 = startPathFindingNodeList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            startPathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ index }));
            _ = Inheritance.call(pathList.?, "remove", .{ startPathFindingNode.?.geographicMapCellPosition });
            _ = Inheritance.call(pathList.?, "addAt", .{ 0, startPathFindingNode.?.geographicMapCellPosition });
            }
        }
    }
    

    pub fn isValid(self: *Self, graphPath: ?Object) bool {
        _ = graphPath;
        _ = self;
        return false;
    }
    

    pub fn getInvalidReason(self: *Self, graphPath: ?Object) ?*String {
        _ = graphPath;
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};

