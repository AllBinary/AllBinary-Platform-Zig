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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasePathFinderGraphVisitor = @import("org/allbinary/game/media/graphics/geography/map/racetrack/BasePathFinderGraphVisitor.zig").BasePathFinderGraphVisitor;

//1.4.2
pub const PathFinderGraphHackVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor";
    base: BasePathFinderGraphVisitor = undefined,
    

    pub fn create4(geographicMapInterface: ?*BasicGeographicMap, edgeMinimum: i32, minPathWeight: i32, maxPathWeight: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasePathFinderGraphVisitor, "create4", .{ geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, graph: ?Object, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList) void {
        _ = Inheritance.call(self, "fixStart", .{ graph, startPathFindingNodeList });
        _ = Inheritance.call(self, "fixEnd", .{ graph, endPathFindingNodeList });
        _ = Inheritance.call(self, "fixOverPassEdges", .{ graph });
    }
    

    // throws Exception
    pub fn fixStart(self: *Self, graph: ?Object, startPathFindingNodeList: ?*BasicArrayList) void {
        _ = graph;
        _ = startPathFindingNodeList;
        _ = self;
    }
    

    // throws Exception
    pub fn fixEnd(self: *Self, graph: ?Object, endPathFindingNodeList: ?*BasicArrayList) void {
        _ = graph;
        _ = endPathFindingNodeList;
        _ = self;
    }
    

    // throws Exception
    pub fn fixOverPassEdges(self: *Self, graph: ?Object) void {
        _ = graph;
        _ = self;
    }
    

    // throws Exception
    pub fn fixPath(self: *Self, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList, pathList: ?*BasicArrayList) void {
        _ = startPathFindingNodeList;
        _ = endPathFindingNodeList;
        _ = pathList;
        _ = self;
    }
    

    // throws Exception
    pub fn removeOverPassEdges(self: *Self, pathList: ?*BasicArrayList) void {
        _ = pathList;
        _ = self;
    }
    

    pub fn isValid(self: *Self, graphPath: ?Object) bool {
        _ = graphPath;
        _ = self;
        return false;
    }
};

