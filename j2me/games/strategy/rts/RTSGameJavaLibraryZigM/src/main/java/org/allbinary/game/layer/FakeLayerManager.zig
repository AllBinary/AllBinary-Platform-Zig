// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot  
// Generated Code Do Not Modify
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;

pub const FakeLayerManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.FakeLayerManager";
    base: AllBinaryGameLayerManager = undefined,
    geographicMapInterfaceArray: []?*BasicGeographicMap = &.{},
    geographicMapCellTypeArray: []?*GeographicMapCellType = &.{},
    // Implements GeographicMapCompositeInterface

    fn initFields(this: *Self) void {
        this.geographicMapInterfaceArray = BasicGeographicMap.NULL_BASIC_GEOGRAPHIC_MAP_ARRAY;
        this.geographicMapCellTypeArray = GeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY;
    }
    

    pub fn create1(gameInfo: ?*GameInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameLayerManager, "create3", .{ BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE, gameInfo }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getGeographicMapInterface(self: *Self) []?*BasicGeographicMap {
        return self.geographicMapInterfaceArray;
    }
    

    pub fn setGeographicMapInterface(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap) void {
        self.geographicMapInterfaceArray = geographicMapInterfaceArray;
        self.geographicMapCellTypeArray = Inheritance.upcast(@TypeOf(self.geographicMapCellTypeArray), array_N66103: { const array_N66103_array = allocator.alloc(?*GeographicMapCellType, @intCast(@as(i32, @intCast(self.geographicMapInterfaceArray.len)))) catch unreachable; @memset(array_N66103_array, null); break :array_N66103 array_N66103_array; });
    }
    

    pub fn geographicMapCellTypeArray(self: *Self) []?*GeographicMapCellType {
        return self.geographicMapCellTypeArray;
    }
};

