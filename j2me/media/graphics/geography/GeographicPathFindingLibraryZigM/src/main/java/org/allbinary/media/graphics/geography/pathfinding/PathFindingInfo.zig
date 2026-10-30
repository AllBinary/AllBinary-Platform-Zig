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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const GeographicPathFinderBase = @import("org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase.zig").GeographicPathFinderBase;
const PathFindingInfoInterface = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfoInterface.zig").PathFindingInfoInterface;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const PathFindingNodeCostInfoFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase.zig").PathFindingNodeCostInfoFactoryBase;

pub const PathFindingInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo";
    pub const java_interfaces = .{ PathFindingInfoInterface };
    pathFinder: ?*GeographicPathFinderBase = null,
    startPathFindingNodeList: ?*BasicArrayList = null,
    endPathFindingNodeList: ?*BasicArrayList = null,
    pathFindingNodeCostInfoFactoryInterface: ?*PathFindingNodeCostInfoFactoryBase = null,
    // Implements PathFindingInfoInterface
    pub var NULL_PATH_FINDING_INFO: ?*PathFindingInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PATH_FINDING_INFO = Inheritance.callStatic(PathFindingInfo, "create3", .{ PathFindingNodeCostInfoFactoryBase.NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance(), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance() });
    }

    fn initFields(this: *Self) void {
        this.pathFinder = Inheritance.upcast(?*GeographicPathFinderBase, GeographicPathFinderBase.NULL_GEOGRAPHIC_PATH_FINDER_BASE);
        
        
        
    }
    

    pub fn create3(pathFindingNodeCostInfoFactoryInterface: ?*PathFindingNodeCostInfoFactoryBase, startPathFindingNodeList: ?*BasicArrayList, endPathFindingNodeList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.pathFindingNodeCostInfoFactoryInterface = pathFindingNodeCostInfoFactoryInterface;
        this.startPathFindingNodeList = startPathFindingNodeList;
        this.endPathFindingNodeList = endPathFindingNodeList;
        return this;
    }
    

    pub fn getStartPathFindingNodeList(self: *Self) ?*BasicArrayList {
        return self.startPathFindingNodeList;
    }
    

    pub fn getEndPathFindingNodeList(self: *Self) ?*BasicArrayList {
        return self.endPathFindingNodeList;
    }
    

    pub fn getPathFinder(self: *Self) ?*GeographicPathFinderBase {
        return self.pathFinder;
    }
    

    pub fn addStartPathFindingNode(self: *Self, startPathFindingNode: ?*PathFindingNode) void {
        _ = Inheritance.call(self.startPathFindingNodeList.?, "add", .{ startPathFindingNode });
    }
    

    pub fn addEndPathFindingNode(self: *Self, endPathFindingNode: ?*PathFindingNode) void {
        _ = Inheritance.call(self.endPathFindingNodeList.?, "add", .{ endPathFindingNode });
    }
    

    pub fn setPathFinder(self: *Self, pathFinder: ?*GeographicPathFinderBase) void {
        self.pathFinder = pathFinder;
    }
    

    pub fn getPathFindingNodeCostInfoFactoryInterface(self: *Self) ?*PathFindingNodeCostInfoFactoryBase {
        return self.pathFindingNodeCostInfoFactoryInterface;
    }
};

