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
// package org.allbinary.game.layer.geographic.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;

pub const LayerPartialCellPositionsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil";
    var instance: ?*LayerPartialCellPositionsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerPartialCellPositionsUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getAll(self: *Self, geographicMapInterface: ?*BasicGeographicMap, layerInterface: ?*AllBinaryLayer, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        _ = self;
        _ = reusableList.?.clear();
        const topLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP(), Inheritance.receiver(layerInterface.?, "getYP").getYP() }));
        const topRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getWidth").getWidth(), Inheritance.receiver(layerInterface.?, "getYP").getYP() }));
        const bottomLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP(), Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHeight").getHeight() }));
        const bottomRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getWidth").getWidth(), Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHeight").getHeight() }));
        if (!Object.same(topLeftGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            _ = Inheritance.call(reusableList.?, "add", .{ topLeftGeographicMapCellPosition });
        }
        if (!Object.same(topRightGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Object.same(topLeftGeographicMapCellPosition, topRightGeographicMapCellPosition)) {
            _ = Inheritance.call(reusableList.?, "add", .{ topRightGeographicMapCellPosition });
        }
        if (!Object.same(bottomLeftGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Inheritance.call(reusableList.?, "contains", .{ bottomLeftGeographicMapCellPosition })) {
            _ = Inheritance.call(reusableList.?, "add", .{ bottomLeftGeographicMapCellPosition });
        }
        if (!Object.same(bottomRightGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Inheritance.call(reusableList.?, "contains", .{ bottomRightGeographicMapCellPosition })) {
            _ = Inheritance.call(reusableList.?, "add", .{ bottomRightGeographicMapCellPosition });
        }
        return reusableList;
    }
    

    // throws Exception
    pub fn getAllDXY(self: *Self, geographicMapInterface: ?*BasicGeographicMap, layerInterface: ?*AllBinaryLayer, dx: i32, dy: i32, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        _ = self;
        _ = reusableList.?.clear();
        const topLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + dx, Inheritance.receiver(layerInterface.?, "getYP").getYP() + dy }));
        const topRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getWidth").getWidth() + dx, Inheritance.receiver(layerInterface.?, "getYP").getYP() + dy }));
        const bottomLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + dx, Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHeight").getHeight() + dy }));
        const bottomRightGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ Inheritance.receiver(layerInterface.?, "getXP").getXP() + Inheritance.receiver(layerInterface.?, "getWidth").getWidth() + dx, Inheritance.receiver(layerInterface.?, "getYP").getYP() + Inheritance.receiver(layerInterface.?, "getHeight").getHeight() + dy }));
        if (!Object.same(topLeftGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            _ = Inheritance.call(reusableList.?, "add", .{ topLeftGeographicMapCellPosition });
        }
        if (!Object.same(topRightGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Object.same(topLeftGeographicMapCellPosition, topRightGeographicMapCellPosition)) {
            _ = Inheritance.call(reusableList.?, "add", .{ topRightGeographicMapCellPosition });
        }
        if (!Object.same(bottomLeftGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Inheritance.call(reusableList.?, "contains", .{ bottomLeftGeographicMapCellPosition })) {
            _ = Inheritance.call(reusableList.?, "add", .{ bottomLeftGeographicMapCellPosition });
        }
        if (!Object.same(bottomRightGeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) and !Inheritance.call(reusableList.?, "contains", .{ bottomRightGeographicMapCellPosition })) {
            _ = Inheritance.call(reusableList.?, "add", .{ bottomRightGeographicMapCellPosition });
        }
        return reusableList;
    }
    

    pub fn getInstance() ?*LayerPartialCellPositionsUtil {
        return Inheritance.upcast(?*LayerPartialCellPositionsUtil, LayerPartialCellPositionsUtil.instance);
    }
};

