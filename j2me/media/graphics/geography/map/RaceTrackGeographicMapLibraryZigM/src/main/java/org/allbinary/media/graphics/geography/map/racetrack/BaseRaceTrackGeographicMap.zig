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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPositionBaseFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory.zig").GeographicMapCellPositionBaseFactory;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackGeographicMapInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapInterface.zig").RaceTrackGeographicMapInterface;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

pub const BaseRaceTrackGeographicMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap";
    pub const java_interfaces = .{ RaceTrackGeographicMapInterface };
    base: BasicGeographicMap = undefined,
    logUtil: ?*LogUtil = null,
    raceTrackInfo: ?*RaceTrackInfo = null,
    raceTrackData: ?*RaceTrackData = null,
    miniGeographicMap: ?*BasicGeographicMap = null,
    // Implements RaceTrackGeographicMapInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
    }
    

    pub fn create7(raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData, tiledLayer: ?*AllBinaryTiledLayer, miniGeographicMap: ?*BasicGeographicMap, geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory: ?*GeographicMapCellPositionBaseFactory, geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicGeographicMap, "create9", .{ raceTrackInfo.?.getId(), raceTrackInfo.?.getName(), raceTrackData.?.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayer, raceTrackInfo.?.getForegroundBasicColor(), raceTrackInfo.?.getBackgroundBasicColor(), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory }).*;
        this.initFields();
        this.raceTrackInfo = raceTrackInfo;
        this.raceTrackData = raceTrackData;
        this.miniGeographicMap = miniGeographicMap;
        const miniTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(this.miniGeographicMap.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        if (!Object.same(Inheritance.receiver(miniTiledLayer.?, "getColumns").getColumns(), Inheritance.receiverOf(Inheritance.receiver(this, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory().?, "getColumns").getColumns())) {
            const @"error": ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("RaceTrackMap has incorrect Mini Map columns: ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(miniTiledLayer.?, "getColumns").getColumns())) }).?, "append", .{ String.literal(" != ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiverOf(Inheritance.receiver(this, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory().?, "getColumns").getColumns())) }))));
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR });
            std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
        }
        if (!Object.same(Inheritance.receiver(miniTiledLayer.?, "getRows").getRows(), Inheritance.receiverOf(Inheritance.receiver(this, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory().?, "getRows").getRows())) {
            const @"error": ?*String = String.literal("RaceTrackMap has incorrect Mini Map rows");
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR });
            std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getRaceTrackInfo(self: *Self) ?*RaceTrackInfo {
        return self.raceTrackInfo;
    }
    

    pub fn setRaceTrackInfo(self: *Self, aRaceTrackInfo: ?*RaceTrackInfo) void {
        self.raceTrackInfo = aRaceTrackInfo;
    }
    

    pub fn setMiniBasicGeographicMap(self: *Self, miniBasicGeographicMap: ?*BasicGeographicMap) void {
        self.miniGeographicMap = miniBasicGeographicMap;
    }
    

    pub fn getMiniBasicGeographicMap(self: *Self) ?*BasicGeographicMap {
        return self.miniGeographicMap;
    }
    

    pub fn getRaceTrackData(self: *Self) ?*RaceTrackData {
        return self.raceTrackData;
    }
    

    pub fn setRaceTrackData(self: *Self, raceTrackData: ?*RaceTrackData) void {
        self.raceTrackData = raceTrackData;
    }
};

