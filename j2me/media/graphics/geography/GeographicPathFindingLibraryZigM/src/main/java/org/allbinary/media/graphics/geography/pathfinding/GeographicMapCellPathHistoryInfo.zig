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
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;

pub const GeographicMapCellPathHistoryInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.GeographicMapCellPathHistoryInfo";
    previousGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    previousOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    nextUnvisitedOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    nextOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,
    nextChosenOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition = null,

    fn initFields(this: *Self) void {
        this.previousGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.previousOnPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.nextUnvisitedOnPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.nextOnPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.nextChosenOnPathGeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getPreviousGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.previousGeographicMapCellPosition;
    }
    

    pub fn setPreviousGeographicMapCellPosition(self: *Self, previousGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.previousGeographicMapCellPosition = previousGeographicMapCellPosition;
    }
    

    pub fn getPreviousOnPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.previousOnPathGeographicMapCellPosition;
    }
    

    pub fn setPreviousOnPathGeographicMapCellPosition(self: *Self, previousOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.previousOnPathGeographicMapCellPosition = previousOnPathGeographicMapCellPosition;
    }
    

    pub fn getNextUnvisitedOnPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.nextUnvisitedOnPathGeographicMapCellPosition;
    }
    

    pub fn setNextUnvisitedOnPathGeographicMapCellPosition(self: *Self, nextUnvisitedOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.nextUnvisitedOnPathGeographicMapCellPosition = nextUnvisitedOnPathGeographicMapCellPosition;
    }
    

    pub fn getNextOnPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.nextOnPathGeographicMapCellPosition;
    }
    

    pub fn setNextOnPathGeographicMapCellPosition(self: *Self, nextOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.nextOnPathGeographicMapCellPosition = nextOnPathGeographicMapCellPosition;
    }
    

    pub fn getNextChosenOnPathGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.nextChosenOnPathGeographicMapCellPosition;
    }
    

    pub fn setNextChosenOnPathGeographicMapCellPosition(self: *Self, nextChosenOnPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        self.nextChosenOnPathGeographicMapCellPosition = nextChosenOnPathGeographicMapCellPosition;
    }
};

