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
// package org.allbinary.media.graphics.geography.map.racetrack.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const DropLayerFactory = @import("org/allbinary/game/layer/drop/DropLayerFactory.zig").DropLayerFactory;
const PickupLayerCircularStaticPool = @import("org/allbinary/game/layer/pickup/PickupLayerCircularStaticPool.zig").PickupLayerCircularStaticPool;
const RaceTrackPickupLayer = @import("org/allbinary/game/layer/pickup/RaceTrackPickupLayer.zig").RaceTrackPickupLayer;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const RaceTrackDropCellPositionGenerator = @import("org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackDropCellPositionGenerator.zig").RaceTrackDropCellPositionGenerator;

pub const RaceTrackRandomDropCellPositionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator";
    base: RaceTrackDropCellPositionGenerator = undefined,
    myRandomFactory: ?*MyRandomFactory = null,
    cellsPerRowOrColumn: i32 = 0,
    totalCells: i32 = 0,
    rowArray: []i32 = &.{},
    columnArray: []i32 = &.{},
    cellWidth: i32 = 0,
    cellHeight: i32 = 0,
    var SINGLETON: ?*RaceTrackRandomDropCellPositionGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = RaceTrackRandomDropCellPositionGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        this.cellsPerRowOrColumn = 3;
        this.totalCells = this.cellsPerRowOrColumn * this.cellsPerRowOrColumn;
        this.rowArray = @constCast(&[_]i32{ 0, 1, 2, 0, 1, 2, 0, 1, 2 })[0..];
        this.columnArray = @constCast(&[_]i32{ 0, 0, 0, 1, 1, 1, 2, 2, 2 })[0..];
        this.cellWidth = 0;
        this.cellHeight = 0;
    }
    

    pub fn getInstance() ?*RaceTrackRandomDropCellPositionGenerator {
        return Inheritance.upcast(?*RaceTrackRandomDropCellPositionGenerator, RaceTrackRandomDropCellPositionGenerator.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RaceTrackDropCellPositionGenerator.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = Inheritance.call(&self.base, "update", .{ allBinaryGameLayerManager, geographicMapInterface });
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        self.cellWidth = (divide_N66552: { const left_N66552 = Inheritance.receiver(tiledLayer.?, "getCellWidth").getCellWidth(); const right_N66552 = self.cellsPerRowOrColumn; break :divide_N66552 if (comptime @typeInfo(@TypeOf(left_N66552)) == .int or @TypeOf(left_N66552) == comptime_int) @divTrunc(left_N66552, right_N66552) else left_N66552 / right_N66552; });
        self.cellHeight = (divide_N66604: { const left_N66604 = Inheritance.receiver(tiledLayer.?, "getCellHeight").getCellHeight(); const right_N66604 = self.cellsPerRowOrColumn; break :divide_N66604 if (comptime @typeInfo(@TypeOf(left_N66604)) == .int or @TypeOf(left_N66604) == comptime_int) @divTrunc(left_N66604, right_N66604) else left_N66604 / right_N66604; });
    }
    

    // throws Exception
    pub fn drop(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, index: i32) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "get", .{ index }));
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
        const randomCell: i32 = Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ self.totalCells });
        const row: i32 = self.rowArray[@intCast(randomCell)];
        const column: i32 = self.columnArray[@intCast(randomCell)];
        const x: i32 = point.?.getX() + (row * self.cellWidth);
        const y: i32 = point.?.getY() + (column * self.cellHeight);
        const pickedUpLayerInterfaceFactory: ?*PickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, Inheritance.receiverOf(DropLayerFactory.getInstance().?, "getRandomInstance").getRandomInstance());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiverOf(Inheritance.fieldPointer(self, "raceTrackGeographicMap").*.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const pickupLayer: ?*RaceTrackPickupLayer = Inheritance.cast(?*RaceTrackPickupLayer, Inheritance.call(PickupLayerCircularStaticPool.getInstance().?, "getInstanceXYZ", .{ pickedUpLayerInterfaceFactory, x, y, Inheritance.receiver(tiledLayer.?, "getZP").getZP() + 3 }));
        _ = Inheritance.call(pickupLayer.?, "setTiledLayer", .{ tiledLayer });
        _ = Inheritance.call(allBinaryLayerManager.?, "append", .{ pickupLayer });
    }
};

