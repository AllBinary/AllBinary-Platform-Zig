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
const MultiGeographicMapBehavior = @import("org/allbinary/media/graphics/geography/map/MultiGeographicMapBehavior.zig").MultiGeographicMapBehavior;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const BasicTerrainInfo = @import("org/allbinary/game/terrain/BasicTerrainInfo.zig").BasicTerrainInfo;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;
const TerrainEventCircularStaticPool = @import("org/allbinary/game/terrain/TerrainEventCircularStaticPool.zig").TerrainEventCircularStaticPool;
const TerrainEventHandler = @import("org/allbinary/game/terrain/TerrainEventHandler.zig").TerrainEventHandler;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AngleFactory = @import("org/allbinary/math/AngleFactory.zig").AngleFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const TopViewCharacterBehavior = @import("org/allbinary/game/behavior/topview/TopViewCharacterBehavior.zig").TopViewCharacterBehavior;

pub const NonPlayerTopViewCharacterBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior";
    base: TopViewCharacterBehavior = undefined,
    geographicMapBehavior: ?*MultiGeographicMapBehavior = null,
    CLIFF: ?*BasicTerrainInfo = null,

    fn initFields(this: *Self) void {
        this.geographicMapBehavior = MultiGeographicMapBehavior.create();
        this.CLIFF = Inheritance.callStatic(BasicTerrainInfo, "create1", .{ AngleFactory.getInstance().?.DOWN });
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
    pub fn terrainEvent(self: *Self, layer: ?*AllBinaryLayer, direction: ?*Direction, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = x;
        _ = y;
        const maxColumns: i32 = Inheritance.receiverOf(geographicMapInterfaceArray[@intCast(0)].?.getAllBinaryTiledLayer().?, "getColumns").getColumns();
        if (geographicMapCellPosition.?.getColumn() > 0 and geographicMapCellPosition.?.getColumn() < maxColumns) {
            var nextTerrainGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
            const geographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterfaceArray[@intCast(0)].?.getGeographicMapCellPositionFactory());
            if (Object.same(direction, DirectionFactory.getInstance().?.LEFT)) {
                nextTerrainGeographicMapCellPosition = Inheritance.upcast(@TypeOf(nextTerrainGeographicMapCellPosition), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ geographicMapCellPosition.?.getColumn() - 1, geographicMapCellPosition.?.getRow() }));
            } else if (Object.same(direction, DirectionFactory.getInstance().?.RIGHT)) {
                nextTerrainGeographicMapCellPosition = Inheritance.upcast(@TypeOf(nextTerrainGeographicMapCellPosition), Inheritance.call(geographicMapCellPositionFactory.?, "getAt", .{ geographicMapCellPosition.?.getColumn() + 1, geographicMapCellPosition.?.getRow() }));
            }
            _ = Inheritance.call(self.geographicMapBehavior.?, "getCellTypeAt", .{ geographicMapInterfaceArray, geographicMapCellTypeArray, nextTerrainGeographicMapCellPosition });
            const hasSolidBlock: bool = Inheritance.call(self, "hasSolidBlock", .{ geographicMapInterfaceArray, geographicMapCellTypeArray });
            if (!hasSolidBlock) {
                const terrainEvent_: ?*TerrainEvent = Inheritance.upcast(?*TerrainEvent, Inheritance.call(TerrainEventCircularStaticPool.getInstance().?, "getNext", .{ self.CLIFF }));
                _ = Inheritance.call(Inheritance.callStatic(TerrainEventHandler, "getInstance", .{ layer }).?, "fireEvent", .{ terrainEvent_ });
            }
        }
    }
    

    pub fn terrainMove(self: *Self, layer: ?*AllBinaryLayer, geographicMapInterfaceArray: []?*BasicGeographicMap, x: i32, y: i32) void {
        _ = geographicMapInterfaceArray;
        _ = self;
        _ = Inheritance.call(layer.?, "moveDXY", .{ x, y });
    }
};

