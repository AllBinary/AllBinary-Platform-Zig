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
// package org.allbinary.media.graphics.geography.map.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BaseDropCellPositionGenerator = @import("org/allbinary/media/graphics/geography/map/drop/BaseDropCellPositionGenerator.zig").BaseDropCellPositionGenerator;

pub const AnyRandomDropCellPositionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator";
    base: BaseDropCellPositionGenerator = undefined,
    list: ?*BasicArrayList = null,
    geographicMapInterface: ?Object = null,

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.geographicMapInterface = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseDropCellPositionGenerator.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = allBinaryGameLayerManager;
        self.geographicMapInterface = geographicMapInterface;
        const basicGeographicMapCellPositionFactory: ?*BasicGeographicMapCellPositionFactory = Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, geographicMapInterface.?.getGeographicMapCellPositionFactory());
        const randomFactory: ?*MyRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        const tiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, geographicMapInterface.?.getAllBinaryTiledLayer());
        const total: i32 = Inheritance.receiver(tiledLayer.?, "getColumns").getColumns() * Inheritance.receiver(tiledLayer.?, "getRows").getRows();
        var randomColumn: i32 = 0;
        var randomRow: i32 = 0;
        var geographicMapCellPosition: ?*GeographicMapCellPosition = null;
        {
            var index: i32 = total;
            while (value_N66586: { index -= 1; break :value_N66586 index; } >= 0) {
            randomColumn = Inheritance.call(randomFactory.?, "getAbsoluteNextInt", .{ Inheritance.receiver(tiledLayer.?, "getColumns").getColumns() });
            randomRow = Inheritance.call(randomFactory.?, "getAbsoluteNextInt", .{ Inheritance.receiver(tiledLayer.?, "getRows").getRows() });
            geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(basicGeographicMapCellPositionFactory.?, "getAt", .{ randomColumn, randomRow }));
            if (Inheritance.call(self, "isDropAllowedAt", .{ geographicMapCellPosition })) {
                _ = Inheritance.call(self.list.?, "add", .{ geographicMapCellPosition });
            }
            }
        }
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
    }
};

