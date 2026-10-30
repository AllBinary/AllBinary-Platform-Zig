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
// package org.allbinary.media.graphics.geography.map.racetrack.threed

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

pub const AllBinaryThreedTiledLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory";
    var instance: ?*AllBinaryThreedTiledLayerFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AllBinaryThreedTiledLayerFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AllBinaryThreedTiledLayerFactory {
        return Inheritance.upcast(?*AllBinaryThreedTiledLayerFactory, AllBinaryThreedTiledLayerFactory.instance);
    }
    

    // throws Exception
    pub fn getInstance2(self: *Self, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
        _ = raceTrackInfo;
        _ = raceTrackData;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Threed"); break :exception error.Exception; }});
    }
};

