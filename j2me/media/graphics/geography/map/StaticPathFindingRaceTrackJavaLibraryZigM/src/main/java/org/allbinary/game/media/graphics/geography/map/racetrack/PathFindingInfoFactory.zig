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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasePathFindingInfoFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/BasePathFindingInfoFactory.zig").BasePathFindingInfoFactory;
const RaceTrackRoadsGeographicMapCellHistoryFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackRoadsGeographicMapCellHistoryFactory.zig").RaceTrackRoadsGeographicMapCellHistoryFactory;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const PathFindingNodeCostInfoFactoryBase = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBase.zig").PathFindingNodeCostInfoFactoryBase;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;

pub const PathFindingInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory";
    base: BasePathFindingInfoFactory = undefined,
    var instance: ?*PathFindingInfoFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PathFindingInfoFactory.create();
    }
    

    pub fn getInstance() ?*PathFindingInfoFactory {
        return Inheritance.upcast(?*PathFindingInfoFactory, PathFindingInfoFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasePathFindingInfoFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getInstancePathFindingInfo(self: *Self, geographicMapInterface: ?*BasicGeographicMap, graphArray: [][]i32) ?*PathFindingInfo {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ commonStrings.?.START, self, commonStrings.?.GET_INSTANCE });
        const pathFindingInfo: ?*PathFindingInfo = Inheritance.callStatic(PathFindingInfo, "create3", .{ PathFindingNodeCostInfoFactoryBase.create(), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }), Inheritance.callStatic(BasicArrayListS, "create1", .{ 1 }) });
        _ = Inheritance.receiverOf(RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().?, "init").init();
        _ = Inheritance.call(self, "init", .{ geographicMapInterface, pathFindingInfo, graphArray });
        return pathFindingInfo;
    }
};

