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
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPositionBaseFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory.zig").GeographicMapCellPositionBaseFactory;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const AllBinaryTiledLayerFactoryInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface.zig").AllBinaryTiledLayerFactoryInterface;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

pub const BasicGeographicMapFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData, tiledLayerFactoryInterface: ?*AllBinaryTiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory) ?*BasicGeographicMap {
        _ = self;
        return Inheritance.callStatic(BasicGeographicMap, "create9", .{ Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ Inheritance.receiverOf(raceTrackInfo.?.getId().?, "intValue").intValue() + 100 + 1 }), raceTrackInfo.?.getName(), raceTrackData.?.getCellTypeIdToGeographicMapCellTypeArray(), Inheritance.call(tiledLayerFactoryInterface.?, "getMiniInstance", .{ raceTrackData }), BasicColorFactory.getInstance().?.CLEAR_COLOR, BasicColorFactory.getInstance().?.CLEAR_COLOR, geographicMapCellPositionFactoryInterface, GeographicMapCellPositionBaseFactory.create(), geographicMapCellTypeFactory });
    }
};

