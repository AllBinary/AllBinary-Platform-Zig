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
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const RaceTrackGeographicMapCellTypes = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypes.zig").RaceTrackGeographicMapCellTypes;

pub const RaceTrackGeographicMapCellTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory";
    base: GeographicMapCellTypeFactory = undefined,
    EMPTY_CELL_TYPE: ?*GeographicMapCellType = null,
    EASY_CELL_TYPE: ?*GeographicMapCellType = null,
    BOTTOM_LEFT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    TOP_LEFT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    TOP_RIGHT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    VERTICAL_STRAIGHT_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    START_LINE_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    DEFAULT_FINISH_LINE_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    FINISH_LINE_ROAD_CELL_TYPE: ?*GeographicMapCellType = null,
    var instanceC: ?*RaceTrackGeographicMapCellTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = RaceTrackGeographicMapCellTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.EMPTY_CELL_TYPE = Inheritance.callStatic(GeographicMapCellType, "create2", .{ 0, -1 });
        this.EASY_CELL_TYPE = this.EMPTY_CELL_TYPE;
        
        
        
        
        
        
        
        
        this.FINISH_LINE_ROAD_CELL_TYPE = Inheritance.upcast(?*GeographicMapCellType, GeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE);
    }
    

    pub fn getInstance() ?*RaceTrackGeographicMapCellTypeFactory {
        return Inheritance.upcast(?*RaceTrackGeographicMapCellTypeFactory, RaceTrackGeographicMapCellTypeFactory.instanceC);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellTypeFactory.create().*;
        this.initFields();
        const raceTrackGeographicMapCellTypes: ?*RaceTrackGeographicMapCellTypes = Inheritance.upcast(?*RaceTrackGeographicMapCellTypes, RaceTrackGeographicMapCellTypes.getInstance());
        this.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE);
        this.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE);
        this.TOP_LEFT_TURN_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.TOP_LEFT_TURN_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.TOP_LEFT_TURN_ROAD_CELL_TYPE);
        this.TOP_RIGHT_TURN_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.TOP_RIGHT_TURN_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.TOP_RIGHT_TURN_ROAD_CELL_TYPE);
        this.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE);
        this.VERTICAL_STRAIGHT_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.VERTICAL_STRAIGHT_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.VERTICAL_STRAIGHT_ROAD_CELL_TYPE);
        this.START_LINE_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.START_LINE_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.START_LINE_ROAD_CELL_TYPE);
        this.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = Inheritance.upcast(@TypeOf(this.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE), raceTrackGeographicMapCellTypes.?.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getStartType(self: *Self) i32 {
        return Inheritance.receiver(self.START_LINE_ROAD_CELL_TYPE.?, "getType").getType();
    }
    

    pub fn getEndType(self: *Self) i32 {
        return self.FINISH_LINE_ROAD_CELL_TYPE.?.getType();
    }
    

    pub fn getEmptyType(self: *Self) i32 {
        return self.EMPTY_CELL_TYPE.?.getType();
    }
    

    pub fn isPath(self: *Self, cellType: ?*GeographicMapCellType) bool {
        if (!Object.same(cellType, self.EMPTY_CELL_TYPE) and !Object.same(cellType, self.EASY_CELL_TYPE)) {
            return true;
        }
        return false;
    }
};

