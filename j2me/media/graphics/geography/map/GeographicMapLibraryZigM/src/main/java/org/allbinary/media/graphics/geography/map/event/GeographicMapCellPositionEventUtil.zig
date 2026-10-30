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
// package org.allbinary.media.graphics.geography.map.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CellPositionFactory = @import("org/allbinary/graphics/CellPositionFactory.zig").CellPositionFactory;
const GeographicMapCellPositionTracking = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking.zig").GeographicMapCellPositionTracking;
const GeographicMapCellPositionEvent = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent.zig").GeographicMapCellPositionEvent;
const GeographicMapCellPositionEventHandler = @import("org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEventHandler.zig").GeographicMapCellPositionEventHandler;

pub const GeographicMapCellPositionEventUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil";
    geographicMapCellPositionEvent: ?*GeographicMapCellPositionEvent = null,
    geographicMapCellPositionEventHandler: ?*GeographicMapCellPositionEventHandler = null,

    fn initFields(this: *Self) void {
        
        this.geographicMapCellPositionEventHandler = Inheritance.upcast(?*GeographicMapCellPositionEventHandler, GeographicMapCellPositionEventHandler.getInstance());
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.geographicMapCellPositionEvent = Inheritance.callStatic(GeographicMapCellPositionEvent, "create2", .{ anyType, CellPositionFactory.getInstance().?.NONE });
        return this;
    }
    

    // throws Exception
    pub fn update(self: *Self, geographicMapCellPositionTracking: ?*GeographicMapCellPositionTracking) void {
        _ = Inheritance.call(self.geographicMapCellPositionEvent.?, "setGeographicMapCellPosition", .{ geographicMapCellPositionTracking.?.getCurrentGeographicMapCellPosition() });
        _ = Inheritance.call(self.geographicMapCellPositionEventHandler.?, "fireEvent", .{ self.geographicMapCellPositionEvent });
    }
    

    // throws Exception
    pub fn remove(self: *Self, geographicMapCellPositionTracking: ?*GeographicMapCellPositionTracking) void {
        _ = Inheritance.call(self.geographicMapCellPositionEvent.?, "setGeographicMapCellPosition", .{ geographicMapCellPositionTracking.?.getCurrentGeographicMapCellPosition() });
        _ = Inheritance.call(self.geographicMapCellPositionEventHandler.?, "fireRemoveEvent", .{ self.geographicMapCellPositionEvent });
    }
};

