// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot  
// Generated Code Do Not Modify
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const WorkWaypoint = @import("org/allbinary/game/layer/waypoint/WorkWaypoint.zig").WorkWaypoint;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const BaseRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap.zig").BaseRaceTrackGeographicMap;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const RTSLayerUtil = @import("org/allbinary/game/layer/RTSLayerUtil.zig").RTSLayerUtil;

pub const AdvancedRTSLayerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedRTSLayerUtil";
    var instance: ?*AdvancedRTSLayerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AdvancedRTSLayerUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AdvancedRTSLayerUtil {
        return Inheritance.upcast(?*AdvancedRTSLayerUtil, AdvancedRTSLayerUtil.instance);
    }
    

    pub fn createFakeRTSLayerHashtable(self: *Self, baseRaceTrackGeographicMap: ?*BaseRaceTrackGeographicMap) ?*ABHashtable {
        _ = self;
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.call(RTSLayerUtil.getInstance().?, "createFakeRTSLayerHashtable", .{ baseRaceTrackGeographicMap }));
        _ = Inheritance.call(hashtable.?, "put", .{ WorkWaypoint.ID, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 50 }) });
        return hashtable;
    }
};

