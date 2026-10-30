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
const EmptyRaceRaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/EmptyRaceRaceTrackGeographicMapCellTypeFactory.zig").EmptyRaceRaceTrackGeographicMapCellTypeFactory;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;

pub const NormalRaceTrackGeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.NormalRaceTrackGeographicMapCellTypeFactory";
    base: RaceTrackGeographicMapCellTypeFactory = undefined,
    var instanceC: ?*NormalRaceTrackGeographicMapCellTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = NormalRaceTrackGeographicMapCellTypeFactory.create();
    }
    

    pub fn getInstance() ?*NormalRaceTrackGeographicMapCellTypeFactory {
        return Inheritance.upcast(?*NormalRaceTrackGeographicMapCellTypeFactory, NormalRaceTrackGeographicMapCellTypeFactory.instanceC);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RaceTrackGeographicMapCellTypeFactory.create().*;
        Inheritance.fieldPointer(this, "EMPTY_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "EMPTY_CELL_TYPE").*), EmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance().?.EMPTY_CELL_TYPE);
        Inheritance.fieldPointer(this, "EASY_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "EASY_CELL_TYPE").*), Inheritance.fieldPointer(this, "EMPTY_CELL_TYPE").*);
        Inheritance.fieldPointer(this, "FINISH_LINE_ROAD_CELL_TYPE").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "FINISH_LINE_ROAD_CELL_TYPE").*), Inheritance.fieldPointer(this, "DEFAULT_FINISH_LINE_ROAD_CELL_TYPE").*);
        Inheritance.bindOverrides(this);
        return this;
    }
};

