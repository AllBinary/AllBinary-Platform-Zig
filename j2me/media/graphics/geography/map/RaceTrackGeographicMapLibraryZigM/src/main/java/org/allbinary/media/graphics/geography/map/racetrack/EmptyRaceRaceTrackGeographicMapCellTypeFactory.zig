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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PathFindingNodeCostInfoData = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData.zig").PathFindingNodeCostInfoData;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;

pub const EmptyRaceRaceTrackGeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory";
    base: RaceTrackGeographicMapCellTypeFactory = undefined,
    var instanceC: ?*EmptyRaceRaceTrackGeographicMapCellTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = EmptyRaceRaceTrackGeographicMapCellTypeFactory.create();
    }
    

    pub fn getInstance() ?*EmptyRaceRaceTrackGeographicMapCellTypeFactory {
        return Inheritance.upcast(?*EmptyRaceRaceTrackGeographicMapCellTypeFactory, EmptyRaceRaceTrackGeographicMapCellTypeFactory.instanceC);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RaceTrackGeographicMapCellTypeFactory.create().*;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        Inheritance.fieldPointer(this, "EMPTY_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "EMPTY_CELL_TYPE").*), Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ commonStrings.?.EMPTY, 0, PathFindingNodeCostInfoData.getInstance().?.MAX_NODE_COST, 1 }));
        Inheritance.fieldPointer(this, "EASY_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "EASY_CELL_TYPE").*), Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Easy"), 19, 1, 0 }));
        Inheritance.fieldPointer(this, "FINISH_LINE_ROAD_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "FINISH_LINE_ROAD_CELL_TYPE").*), Inheritance.fieldPointer(this, "DEFAULT_FINISH_LINE_ROAD_CELL_TYPE").*);
        Inheritance.bindOverrides(this);
        return this;
    }
};

