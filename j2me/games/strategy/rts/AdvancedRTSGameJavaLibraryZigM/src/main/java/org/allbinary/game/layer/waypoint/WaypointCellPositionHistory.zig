// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CellPosition = @import("org/allbinary/graphics/CellPosition.zig").CellPosition;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;

pub const WaypointCellPositionHistory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointCellPositionHistory";
    positionList: ?*BasicArrayList = null,
    layerList: ?*BasicArrayList = null,
    var SINGLETON: ?*WaypointCellPositionHistory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = WaypointCellPositionHistory.create();
    }

    fn initFields(this: *Self) void {
        this.positionList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.layerList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*WaypointCellPositionHistory {
        return Inheritance.upcast(?*WaypointCellPositionHistory, WaypointCellPositionHistory.SINGLETON);
    }
    

    pub fn add(self: *Self, cellPosition: ?*CellPosition, layerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self.positionList.?, "add", .{ cellPosition });
        _ = Inheritance.call(self.layerList.?, "add", .{ layerInterface });
    }
    

    pub fn addList(self: *Self, list: ?*BasicArrayList, layerInterface: ?*AllBinaryLayer) void {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(self, "add", .{ Inheritance.cast(?*CellPosition, Inheritance.call(list.?, "get", .{ index })), layerInterface });
            }
        }
    }
    

    pub fn remove(self: *Self, cellPosition: ?*CellPosition) void {
        const index: i32 = Inheritance.call(self.positionList.?, "indexOf", .{ cellPosition });
        if (index >= 0) {
            _ = Inheritance.call(self.positionList.?, "removeAt", .{ index });
            _ = Inheritance.call(self.layerList.?, "removeAt", .{ index });
        }
    }
    

    pub fn removeLayer(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        var index: i32 = 0;
        while (index != -1) {
            index = Inheritance.call(self.layerList.?, "indexOf", .{ layerInterface });
            if (index >= 0) {
                _ = Inheritance.call(self.positionList.?, "removeAt", .{ index });
                _ = Inheritance.call(self.layerList.?, "removeAt", .{ index });
            }
        }
    }
    

    pub fn clear(self: *Self) void {
        _ = self.positionList.?.clear();
        _ = self.layerList.?.clear();
    }
    

    pub fn isCellPositionWithDrop(self: *Self, cellPosition: ?*CellPosition) bool {
        return Inheritance.call(self.positionList.?, "contains", .{ cellPosition });
    }
    

    pub fn anyCellPositionWithDrop(self: *Self, list: ?*BasicArrayList) bool {
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            if (Inheritance.call(self, "isCellPositionWithDrop", .{ Inheritance.cast(?*CellPosition, Inheritance.call(list.?, "get", .{ index })) })) {
                return true;
            }
            }
        }
        return false;
    }
    

    pub fn getLayerInterface(self: *Self, cellPosition: ?*CellPosition) ?*AllBinaryLayer {
        const index: i32 = Inheritance.call(self.positionList.?, "indexOf", .{ cellPosition });
        if (index >= 0) {
            return Inheritance.cast(?*AllBinaryLayer, Inheritance.call(self.layerList.?, "get", .{ index }));
        } else {
            return Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        }
    }
};

