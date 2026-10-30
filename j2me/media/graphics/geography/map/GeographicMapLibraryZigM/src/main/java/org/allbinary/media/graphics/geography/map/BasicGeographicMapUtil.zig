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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

pub const BasicGeographicMapUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*BasicGeographicMapUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicGeographicMapUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicGeographicMapUtil {
        return Inheritance.upcast(?*BasicGeographicMapUtil, BasicGeographicMapUtil.instance);
    }
    

    // throws Exception
    pub fn getBorderingRow(self: *Self, direction: i32, oldGeographicMapCellPosition: ?*GeographicMapCellPosition) i32 {
        _ = self;
        const LOCATION_CHANGE: i32 = 1;
        switch (direction) {
            0 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow();
            },
            1 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow();
            },
            2 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() + LOCATION_CHANGE;
            },
            3 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getRow").getRow() - LOCATION_CHANGE;
            },
            else => {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Only Four Directions"); break :exception error.Exception; }});
            },
        }
    }
    

    // throws Exception
    pub fn getBorderingColumn(self: *Self, direction: i32, oldGeographicMapCellPosition: ?*GeographicMapCellPosition) i32 {
        _ = self;
        const LOCATION_CHANGE: i32 = 1;
        switch (direction) {
            0 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() - LOCATION_CHANGE;
            },
            1 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn() + LOCATION_CHANGE;
            },
            2 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn();
            },
            3 => {
                return Inheritance.receiver(oldGeographicMapCellPosition.?, "getColumn").getColumn();
            },
            else => {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Only Four Directions"); break :exception error.Exception; }});
            },
        }
    }
    

    // throws Exception
    pub fn isSameCellPosition(self: *Self, fromGeographicMapCellPosition: ?*GeographicMapCellPosition, toGeographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        _ = self;
        const fromColumn: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getColumn").getColumn();
        const fromRow: i32 = Inheritance.receiver(fromGeographicMapCellPosition.?, "getRow").getRow();
        const goColumn: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getColumn").getColumn();
        const goRow: i32 = Inheritance.receiver(toGeographicMapCellPosition.?, "getRow").getRow();
        if (fromColumn == goColumn and fromRow == goRow) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn createAllBinaryTiledLayerArray(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap) []?*Layer {
        const tiledLayerArray: []?*Layer = array_N66856: { const array_N66856_array = allocator.alloc(?*Layer, @intCast(@as(i32, @intCast(geographicMapInterfaceArray.len)))) catch unreachable; @memset(array_N66856_array, null); break :array_N66856 array_N66856_array; };
        return Inheritance.call(self, "getAllBinaryTiledLayerArray", .{ geographicMapInterfaceArray, tiledLayerArray, 0 });
    }
    

    pub fn getAllBinaryTiledLayerArray(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, tiledLayerArray: []?*Layer, startIndex: i32) []?*Layer {
        _ = self;
        var geographicMapInterface: ?*BasicGeographicMap = null;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        var count: i32 = 0;
        {
            var index: i32 = size + startIndex;
            while (value_N67218: { index -= 1; break :value_N67218 index; } >= startIndex) {
            geographicMapInterface = Inheritance.upcast(@TypeOf(geographicMapInterface), geographicMapInterfaceArray[@intCast(index)]);
            tiledLayerArray[@intCast(value_N67172: { const value_N67172_value = count; count += 1; break :value_N67172 value_N67172_value; })] = Inheritance.upcast(@TypeOf(tiledLayerArray[@intCast(value_N67172: { const value_N67172_value = count; count += 1; break :value_N67172 value_N67172_value; })]), Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
            }
        }
        return tiledLayerArray;
    }
    

    pub fn move(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, dx: i32, dy: i32) void {
        _ = self;
        var geographicMapInterface: ?*BasicGeographicMap = null;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        {
            var index: i32 = size;
            while (value_N67583: { index -= 1; break :value_N67583 index; } >= 0) {
            geographicMapInterface = Inheritance.upcast(@TypeOf(geographicMapInterface), geographicMapInterfaceArray[@intCast(index)]);
            _ = Inheritance.call(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "moveDXY", .{ dx, dy });
            }
        }
    }
    

    pub fn setPosition(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, x: i32, y: i32) void {
        _ = self;
        var geographicMapInterface: ?*BasicGeographicMap = null;
        const size: i32 = @as(i32, @intCast(geographicMapInterfaceArray.len));
        {
            var index: i32 = size;
            while (value_N67928: { index -= 1; break :value_N67928 index; } >= 0) {
            geographicMapInterface = Inheritance.upcast(@TypeOf(geographicMapInterface), geographicMapInterfaceArray[@intCast(index)]);
            _ = Inheritance.call(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "setPosition", .{ x, y, Inheritance.receiverOf(Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getZP").getZP() });
            }
        }
    }
};

