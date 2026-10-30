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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const TiledLayer = @import("javax/microedition/lcdui/game/TiledLayer.zig").TiledLayer;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const AllBinaryTiledLayerFactoryInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface.zig").AllBinaryTiledLayerFactoryInterface;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;
const TiledLayerFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/TiledLayerFactory.zig").TiledLayerFactory;
const AllBinaryJ2METiledLayer = @import("org/allbinary/game/layer/AllBinaryJ2METiledLayer.zig").AllBinaryJ2METiledLayer;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;

pub const AllBinaryTiledLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AllBinaryTiledLayerFactory";
    // Implements AllBinaryTiledLayerFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
        _ = raceTrackInfo;
        _ = self;
        var allbinaryTiledLayer: ?*AllBinaryTiledLayer = null;
        const tiledLayer: ?*TiledLayer = Inheritance.upcast(?*TiledLayer, Inheritance.call(TiledLayerFactory.create(), "getInstance", .{ raceTrackData }));
        allbinaryTiledLayer = Inheritance.upcast(@TypeOf(allbinaryTiledLayer), Inheritance.callStatic(AllBinaryJ2METiledLayer, "create4", .{ raceTrackData.?.getId(), tiledLayer, raceTrackData.?.getMapArray(), Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue() }));
        _ = Inheritance.call(allbinaryTiledLayer.?, "setCells", .{ raceTrackData.?.getMapArray() });
        return allbinaryTiledLayer;
    }
    

    // throws Exception
    pub fn getMiniInstance(self: *Self, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
        _ = self;
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const tiledLayer: ?*TiledLayer = Inheritance.upcast(?*TiledLayer, Inheritance.call(TiledLayerFactory.create(), "getMiniInstance", .{ raceTrackData }));
        const allbinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.callStatic(AllBinaryJ2METiledLayer, "create4", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ Inheritance.receiverOf(raceTrackData.?.getId().?, "intValue").intValue() + 100 + 1 }), tiledLayer, raceTrackData.?.getMapArray(), Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue() }));
        _ = Inheritance.call(allbinaryTiledLayer.?, "setCells", .{ raceTrackData.?.getMapArray() });
        return allbinaryTiledLayer;
    }
};

