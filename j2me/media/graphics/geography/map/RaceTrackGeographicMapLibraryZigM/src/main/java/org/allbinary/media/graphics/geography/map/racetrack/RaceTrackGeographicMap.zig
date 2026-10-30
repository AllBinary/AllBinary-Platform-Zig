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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionBaseFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory.zig").GeographicMapCellPositionBaseFactory;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory.zig").GeographicMapCellTypeFactory;
const AllBinaryTiledLayerFactoryInterface = @import("org/allbinary/media/graphics/geography/map/racetrack/AllBinaryTiledLayerFactoryInterface.zig").AllBinaryTiledLayerFactoryInterface;
const BaseRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap.zig").BaseRaceTrackGeographicMap;
const BasicGeographicMapFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/BasicGeographicMapFactory.zig").BasicGeographicMapFactory;
const CustomMapGeneratorBase = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBase.zig").CustomMapGeneratorBase;
const CustomMapGeneratorBaseFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/CustomMapGeneratorBaseFactory.zig").CustomMapGeneratorBaseFactory;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

pub const RaceTrackGeographicMap = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap";
    base: BaseRaceTrackGeographicMap = undefined,
    customMapGenerator: ?*CustomMapGeneratorBase = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create7(raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData, tiledLayerFactoryInterface: ?*AllBinaryTiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface: ?*GeographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory: ?*GeographicMapCellPositionBaseFactory, geographicMapCellTypeFactory: ?*GeographicMapCellTypeFactory, customMapGeneratorBaseFactory: ?*CustomMapGeneratorBaseFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BaseRaceTrackGeographicMap, "create7", .{ raceTrackInfo, raceTrackData, Inheritance.call(tiledLayerFactoryInterface.?, "getInstance", .{ raceTrackInfo, raceTrackData }), Inheritance.call(BasicGeographicMapFactory.create(), "getInstance", .{ raceTrackInfo, raceTrackData, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface, geographicMapCellTypeFactory }), geographicMapCellPositionFactoryInterface, geographicMapCellPositionBaseFactory, geographicMapCellTypeFactory }).*;
        this.initFields();
        this.customMapGenerator = Inheritance.upcast(@TypeOf(this.customMapGenerator), Inheritance.call(customMapGeneratorBaseFactory.?, "create", .{ this }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getCustomMapGenerator(self: *Self) ?*CustomMapGeneratorBase {
        return self.customMapGenerator;
    }
    

    // throws Exception
    pub fn isValid(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        const customMapArray: [][]i32 = self.customMapGenerator.?.getCustomMapArray();
        if (Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn() >= @as(i32, @intCast(customMapArray[@intCast(0)].len))) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Column: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" not in: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(customMapArray[@intCast(0)].len)) });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            if (Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn() == @as(i32, @intCast(customMapArray[@intCast(0)].len))) {
                return true;
            } else {
                return false;
            }
        } else if (Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow() > @as(i32, @intCast(customMapArray.len))) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Row: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" not in: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(customMapArray.len)) });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID });
            if (Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow() == @as(i32, @intCast(customMapArray.len))) {
                return true;
            } else {
                return false;
            }
        }
        return true;
    }
};

