// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const WaypointLayer = @import("org/allbinary/game/layer/waypoint/WaypointLayer.zig").WaypointLayer;

pub const PrimaryWaypointHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.PrimaryWaypointHelper";
    waypointLayer: ?*PathFindingLayerInterface = null,
    var instance: ?*PrimaryWaypointHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PrimaryWaypointHelper.create();
    }

    fn initFields(this: *Self) void {
        this.waypointLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
    }
    

    pub fn getInstance() ?*PrimaryWaypointHelper {
        return Inheritance.upcast(?*PrimaryWaypointHelper, PrimaryWaypointHelper.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getWaypointLayer(self: *Self) ?*PathFindingLayerInterface {
        return self.waypointLayer;
    }
    

    pub fn setWaypointLayer(self: *Self, waypointLayer: ?*WaypointLayer) void {
        self.waypointLayer = waypointLayer;
    }
};

