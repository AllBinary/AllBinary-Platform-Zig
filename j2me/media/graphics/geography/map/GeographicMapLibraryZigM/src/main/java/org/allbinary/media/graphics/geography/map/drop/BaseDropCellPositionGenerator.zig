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
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const DropCellPositionGeneratorInterface = @import("org/allbinary/media/graphics/geography/map/drop/DropCellPositionGeneratorInterface.zig").DropCellPositionGeneratorInterface;

pub const BaseDropCellPositionGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator";
    pub const java_interfaces = .{ DropCellPositionGeneratorInterface };
    // Implements DropCellPositionGeneratorInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    // throws Exception
    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        _ = allBinaryGameLayerManager;
        _ = geographicMapInterface;
        _ = self;
    }
    

    // throws Exception
    pub fn isDropAllowedAt(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        _ = geographicMapCellPosition;
        _ = self;
        return true;
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
    }
};

