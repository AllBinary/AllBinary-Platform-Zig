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
const GraphPath = @import("org/jgrapht/GraphPath.zig").GraphPath;
const SimpleWeightedGraph = @import("org/jgrapht/graph/SimpleWeightedGraph.zig").SimpleWeightedGraph;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const PathFinderGraphVisitorBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFinderGraphVisitorBase.zig").PathFinderGraphVisitorBase;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

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
    pub fn visit(self: *Self, graph: ?*SimpleWeightedGraph, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList) void {
        _ = graph;
        _ = startPathFindingNodeList;
        _ = endPathFindingNodeList;
        _ = self;
    }
    

    // throws Exception
    pub fn fixPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, pathList: ?*BasicArrayList) void {
        _ = endPathFindingNodeList;
        _ = self;
        {
            var index: i32 = startPathFindingNodeList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const startPathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.call(startPathFindingNodeList.?, "get", .{ index }));
            _ = Inheritance.call(pathList.?, "remove", .{ startPathFindingNode.?.geographicMapCellPosition });
            _ = Inheritance.call(pathList.?, "addAt", .{ 0, startPathFindingNode.?.geographicMapCellPosition });
            }
        }
    }
    

    pub fn isValid(self: *Self, graphPath: ?*GraphPath) bool {
        if (Inheritance.receiverOf(graphPath.?.getEdgeList().?, "size").size() > self.edgeMinimum and graphPath.?.getWeight() < self.maxPathWeight and graphPath.?.getWeight() > self.minPathWeight) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getInvalidReason(self: *Self, graphPath: ?*GraphPath) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (Inheritance.receiverOf(graphPath.?.getEdgeList().?, "size").size() < self.edgeMinimum) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal("Ignoring Small: "), Inheritance.receiverOf(graphPath.?.getEdgeList().?, "size").size()) });
        }
        if (graphPath.?.getWeight() <= self.minPathWeight) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal(" Low Weighted Path: "), graphPath.?.getWeight()) });
        }
        if (graphPath.?.getWeight() >= self.maxPathWeight) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.literal(" To High Weighted Path: "), graphPath.?.getWeight()) });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

