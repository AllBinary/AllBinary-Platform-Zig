// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const TrackingEventCircularStaticPool = @import("org/allbinary/game/tracking/TrackingEventCircularStaticPool.zig").TrackingEventCircularStaticPool;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapUtil = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapUtil.zig").BasicGeographicMapUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const TopViewCharacterBehavior = @import("org/allbinary/game/behavior/topview/TopViewCharacterBehavior.zig").TopViewCharacterBehavior;

pub const PlayerTopViewCharacterBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.PlayerTopViewCharacterBehavior";
    base: TopViewCharacterBehavior = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TopViewCharacterBehavior.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn terrainEvent(self: *Self, layer: ?*AllBinaryLayer, direction: ?*Direction, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = direction;
        _ = x;
        _ = y;
        _ = geographicMapInterfaceArray;
        _ = geographicMapCellPosition;
        _ = self;
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "fireEvent", .{ Inheritance.call(TrackingEventCircularStaticPool.getInstance().?, "getNextInstance", .{ layer }) });
    }
    

    pub fn terrainMove(self: *Self, layer: ?*AllBinaryLayer, geographicMapInterfaceArray: []?*BasicGeographicMap, x: i32, y: i32) void {
        _ = layer;
        _ = self;
        const basicGeographicMapUtil: ?*BasicGeographicMapUtil = Inheritance.upcast(?*BasicGeographicMapUtil, BasicGeographicMapUtil.getInstance());
        _ = Inheritance.call(basicGeographicMapUtil.?, "setPosition", .{ geographicMapInterfaceArray, x, y });
    }
    

    pub fn moveIfOnScreen(self: *Self, layer: ?*AllBinaryLayer, ax: i32, ay: i32) void {
        _ = layer;
        _ = ax;
        _ = ay;
        _ = self;
    }
    

    pub fn isTiledLayerMoveable(self: *Self, terrainTiledLayer: ?*AllBinaryTiledLayer, x: i32, y: i32) bool {
        _ = y;
        _ = self;
        return (terrainTiledLayer.?.getXP() + Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastWidth").getLastWidth() < terrainTiledLayer.?.getWidth() or x < 0) and (terrainTiledLayer.?.getXP() > 0 or x > 0);
    }
};

