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
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const LayerCoveringCellPositionsUtil = @import("org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil.zig").LayerCoveringCellPositionsUtil;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapDirectionUtil = @import("org/allbinary/media/graphics/geography/map/GeographicMapDirectionUtil.zig").GeographicMapDirectionUtil;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const DropCellPositionGeneratorInterface = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface.zig").DropCellPositionGeneratorInterface;
const DropCellPositionHistory = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionHistory.zig").DropCellPositionHistory;
const BaseRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap.zig").BaseRaceTrackGeographicMap;
const RaceTrackGeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType.zig").RaceTrackGeographicMapCellType;
const RaceTrackGeographicMapCellTypeFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellTypeFactory.zig").RaceTrackGeographicMapCellTypeFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const RaceTrackAdjacentDropLayerFactory = @import("org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackAdjacentDropLayerFactory.zig").RaceTrackAdjacentDropLayerFactory;
const RaceTrackDropCellPositionGenerator = @import("org/allbinary/media/graphics/geography/map/racetrack/drop/RaceTrackDropCellPositionGenerator.zig").RaceTrackDropCellPositionGenerator;

pub const RaceTrackAdjacentDropCellPositionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator";
    base: RaceTrackDropCellPositionGenerator = undefined,
    layerCoveringCellPositionsUtil: ?*LayerCoveringCellPositionsUtil = null,
    groupCommonFactory: ?*GroupCommonFactory = null,
    surroundingCellPositions: []?*GeographicMapCellPosition = &.{},
    hashtable: ?*ABHashtable = null,
    geographicMapDirectionUtil: ?*GeographicMapDirectionUtil = null,
    var SINGLETON: ?*RaceTrackAdjacentDropCellPositionGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = RaceTrackAdjacentDropCellPositionGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.layerCoveringCellPositionsUtil = Inheritance.upcast(?*LayerCoveringCellPositionsUtil, LayerCoveringCellPositionsUtil.getInstance());
        this.groupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        this.surroundingCellPositions = array_N66661: { const array_N66661_array = allocator.alloc(?*GeographicMapCellPosition, @intCast(4)) catch unreachable; @memset(array_N66661_array, null); break :array_N66661 array_N66661_array; };
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.geographicMapDirectionUtil = Inheritance.upcast(?*GeographicMapDirectionUtil, GeographicMapDirectionUtil.getInstance());
    }
    

    pub fn getInstance() ?*DropCellPositionGeneratorInterface {
        return Inheritance.upcast(?*DropCellPositionGeneratorInterface, RaceTrackAdjacentDropCellPositionGenerator.SINGLETON);
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
    pub fn getFirstNonRoadAdjacentCellPosition(self: *Self, column: i32, row: i32) ?*GeographicMapCellPosition {
        var nonRoadGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiverOf(Inheritance.fieldPointer(self, "raceTrackGeographicMap").*.?, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
        self.surroundingCellPositions[@intCast(0)] = Inheritance.upcast(@TypeOf(self.surroundingCellPositions[@intCast(0)]), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row - 1 }));
        self.surroundingCellPositions[@intCast(1)] = Inheritance.upcast(@TypeOf(self.surroundingCellPositions[@intCast(1)]), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column, row + 1 }));
        self.surroundingCellPositions[@intCast(2)] = Inheritance.upcast(@TypeOf(self.surroundingCellPositions[@intCast(2)]), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column - 1, row }));
        self.surroundingCellPositions[@intCast(3)] = Inheritance.upcast(@TypeOf(self.surroundingCellPositions[@intCast(3)]), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ column + 1, row }));
        const baseRaceTrackGeographicMap: ?*BaseRaceTrackGeographicMap = Inheritance.cast(?*BaseRaceTrackGeographicMap, Inheritance.fieldPointer(self, "raceTrackGeographicMap").*);
        const raceTrackGeographicMapCellTypeFactory: ?*RaceTrackGeographicMapCellTypeFactory = Inheritance.cast(?*RaceTrackGeographicMapCellTypeFactory, Inheritance.receiver(baseRaceTrackGeographicMap.?, "getGeographicMapCellTypeFactory").getGeographicMapCellTypeFactory());
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        var raceTrackGeographicMapCellType: ?*RaceTrackGeographicMapCellType = null;
        {
            var index: i32 = @as(i32, @intCast(self.surroundingCellPositions.len));
            while (value_N67479: { index -= 1; break :value_N67479 index; } >= 0) {
            geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), self.surroundingCellPositions[@intCast(index)]);
            raceTrackGeographicMapCellType = Inheritance.cast(?*RaceTrackGeographicMapCellType, Inheritance.call(Inheritance.fieldPointer(self, "raceTrackGeographicMap").*.?, "getCellTypeAt", .{ geographicMapCellPosition }));
            if (!Inheritance.call(raceTrackGeographicMapCellTypeFactory.?, "isPath", .{ raceTrackGeographicMapCellType })) {
                nonRoadGeographicMapCellPosition = geographicMapCellPosition;
                break;
            }
            }
        }
        return nonRoadGeographicMapCellPosition;
    }
    

    // throws Exception
    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = Inheritance.call(self.hashtable.?, "put", .{ AllBinaryGameLayerManager.ID, allBinaryGameLayerManager });
        _ = Inheritance.call(&self.base, "update", .{ allBinaryGameLayerManager, geographicMapInterface });
    }
    

    // throws Exception
    pub fn drop(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, index: i32) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "get", .{ index }));
        const randomGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(self, "getFirstNonRoadAdjacentCellPosition", .{ Inheritance.receiver(geographicMapCellPosition.?, "getColumn").getColumn(), Inheritance.receiver(geographicMapCellPosition.?, "getRow").getRow() }));
        if (randomGeographicMapCellPosition == null) {
            return;
        }
        const dropCellPositionHistory: ?*DropCellPositionHistory = Inheritance.upcast(?*DropCellPositionHistory, DropCellPositionHistory.getInstance());
        if (!Inheritance.call(dropCellPositionHistory.?, "isCellPositionWithDrop", .{ geographicMapCellPosition })) {
            const direction: ?*Direction = Inheritance.upcast(?*Direction, Inheritance.call(self.geographicMapDirectionUtil.?, "getDirectionFromCellPositionToAdjacentCellPosition", .{ randomGeographicMapCellPosition, geographicMapCellPosition }));
            const objectCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.hashtable.?, "get", .{ self.groupCommonFactory.?.ID }));
            if (objectCanBeNull != null) {
            } else {
                _ = Inheritance.call(self.hashtable.?, "put", .{ self.groupCommonFactory.?.ID, BasicGroupFactory.getInstance().?.NONE_ARRAY });
            }
            _ = Inheritance.call(self.hashtable.?, "put", .{ DirectionFactory.getInstance().?.NAME, direction });
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(randomGeographicMapCellPosition.?, "getPoint").getPoint());
            const x: i32 = point.?.getX();
            const y: i32 = point.?.getY();
            const z: i32 = point.?.getZ();
            const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(Inheritance.receiverOf(RaceTrackAdjacentDropLayerFactory.getInstance().?, "getRandomInstance").getRandomInstance().?, "getNextInstance", .{ self.hashtable, x, y, z }));
            const baseRaceTrackGeographicMap: ?*BaseRaceTrackGeographicMap = Inheritance.cast(?*BaseRaceTrackGeographicMap, Inheritance.fieldPointer(self, "raceTrackGeographicMap").*);
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.layerCoveringCellPositionsUtil.?, "getAll", .{ baseRaceTrackGeographicMap, randomGeographicMapCellPosition, layerInterface, BasicArrayListD.create() }));
            if (Inheritance.call(dropCellPositionHistory.?, "anyCellPositionWithDrop", .{ list })) {
                return;
            }
            var geographicMapCellType: ?*GeographicMapCellType = null;
            {
                var index2: i32 = list.?.size();
                while (value_N69192: { index2 -= 1; break :value_N69192 index2; } >= 0) {
                geographicMapCellType = Inheritance.upcast(@TypeOf(geographicMapCellType), Inheritance.call(Inheritance.fieldPointer(self, "raceTrackGeographicMap").*.?, "getCellTypeAt", .{ Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(list.?, "get", .{ index2 })) }));
                if (Inheritance.call(Inheritance.fieldPointer(self, "raceTrackGeographicMapCellTypeFactory").*.?, "isPath", .{ geographicMapCellType })) {
                    return;
                }
                }
            }
            _ = Inheritance.call(dropCellPositionHistory.?, "addAll", .{ list, layerInterface });
            _ = Inheritance.call(allBinaryLayerManager.?, "append", .{ layerInterface });
        }
    }
};

