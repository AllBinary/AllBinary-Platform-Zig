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
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;

pub const RaceTrackGeographicMapCellTypes = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes";
    BOTTOM_LEFT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    TOP_LEFT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    TOP_RIGHT_TURN_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    VERTICAL_STRAIGHT_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    START_LINE_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    DEFAULT_FINISH_LINE_ROAD_CELL_TYPE: ?*RaceTrackGeographicMapCellType = null,
    var instance: ?*RaceTrackGeographicMapCellTypes = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RaceTrackGeographicMapCellTypes.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*RaceTrackGeographicMapCellTypes {
        return Inheritance.upcast(?*RaceTrackGeographicMapCellTypes, RaceTrackGeographicMapCellTypes.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Bottom Left Turn"), 1, 1, 0 });
        this.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Bottom Right Turn"), 2, 1, 0 });
        this.TOP_LEFT_TURN_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Top Left Turn"), 3, 1, 0 });
        this.TOP_RIGHT_TURN_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Top Right Turne"), 4, 1, 0 });
        this.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Horizontal Straight"), 5, 1, 0 });
        this.VERTICAL_STRAIGHT_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Vertical Straight"), 6, 1, 0 });
        this.START_LINE_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Start Line"), 7, 1, 0 });
        this.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE = Inheritance.callStatic(RaceTrackGeographicMapCellType, "create4", .{ String.literal("Finish Line"), 8, 1, 0 });
        return this;
    }
};

