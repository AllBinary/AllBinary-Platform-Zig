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
const CellPositionsUtil = @import("org/allbinary/media/graphics/geography/map/CellPositionsUtil.zig").CellPositionsUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

pub const LayerCoveringCellPositionsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil";
    cellPositionsUtil: ?*CellPositionsUtil = null,
    var instance: ?*LayerCoveringCellPositionsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LayerCoveringCellPositionsUtil.create();
    }

    fn initFields(this: *Self) void {
        this.cellPositionsUtil = Inheritance.upcast(?*CellPositionsUtil, CellPositionsUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*LayerCoveringCellPositionsUtil {
        return Inheritance.upcast(?*LayerCoveringCellPositionsUtil, LayerCoveringCellPositionsUtil.instance);
    }
    

    // throws Exception
    pub fn getAllXY(self: *Self, geographicMapInterface: ?*BasicGeographicMap, layerInterface: ?*AllBinaryLayer, x: i32, y: i32, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        const topLeftGeographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ x, y }));
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getAll", .{ geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList }));
    }
    

    // throws Exception
    pub fn getAll(self: *Self, geographicMapInterface: ?*BasicGeographicMap, topLeftGeographicMapCellPosition: ?*GeographicMapCellPosition, layerInterface: ?*AllBinaryLayer, reusableList: ?*BasicArrayList) ?*BasicArrayList {
        _ = reusableList.?.clear();
        var columns: i32 = (divide_N66247: { const left_N66247 = Inheritance.receiver(layerInterface.?, "getWidth").getWidth(); const right_N66247 = Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getCellWidth").getCellWidth(); break :divide_N66247 if (comptime @typeInfo(@TypeOf(left_N66247)) == .int or @TypeOf(left_N66247) == comptime_int) @divTrunc(left_N66247, right_N66247) else left_N66247 / right_N66247; });
        var rows: i32 = (divide_N66315: { const left_N66315 = Inheritance.receiver(layerInterface.?, "getHeight").getHeight(); const right_N66315 = Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getCellHeight").getCellHeight(); break :divide_N66315 if (comptime @typeInfo(@TypeOf(left_N66315)) == .int or @TypeOf(left_N66315) == comptime_int) @divTrunc(left_N66315, right_N66315) else left_N66315 / right_N66315; });
        if (columns == 0) {
            columns = 1;
        }
        if (rows == 0) {
            rows = 1;
        }
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.cellPositionsUtil.?, "getAll", .{ geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList }));
    }
};

