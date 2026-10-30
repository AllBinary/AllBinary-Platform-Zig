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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;
const PlayerOwnedRTSLayers = @import("org/allbinary/game/layer/PlayerOwnedRTSLayers.zig").PlayerOwnedRTSLayers;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;

pub const AdvancedPlayerOwnedRTSLayers = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers";
    base: PlayerOwnedRTSLayers = undefined,
    unitsList: ?*BasicArrayList = null,
    waypointsList: ?*BasicArrayList = null,
    buildingList: ?*BasicArrayList = null,
    baseList: ?*BasicArrayList = null,
    garrisonList: ?*BasicArrayList = null,
    houseList: ?*BasicArrayList = null,
    labList: ?*BasicArrayList = null,
    factoryList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.unitsList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.waypointsList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.buildingList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.baseList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.garrisonList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.houseList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.labList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.factoryList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PlayerOwnedRTSLayers.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addUnit(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.unitsList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addWaypoint(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.waypointsList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addBase(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.baseList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(self.buildingList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addGarrison(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.garrisonList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(self.buildingList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addHouse(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.houseList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(self.buildingList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addLab(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.labList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(self.buildingList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn addFactory(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(self.factoryList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(self.buildingList.?, "add", .{ rtsLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "add", .{ rtsLayer });
    }
    

    pub fn removeUnit(self: *Self, gameLayer: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(self.unitsList.?, "remove", .{ gameLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ gameLayer });
    }
    

    pub fn removeWaypoint(self: *Self, gameLayer: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(self.waypointsList.?, "remove", .{ gameLayer });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ gameLayer });
    }
    

    pub fn getUnitsList(self: *Self) ?*BasicArrayList {
        return self.unitsList;
    }
    

    pub fn getWaypointsList(self: *Self) ?*BasicArrayList {
        return self.waypointsList;
    }
    

    pub fn getBaseList(self: *Self) ?*BasicArrayList {
        return self.baseList;
    }
    

    pub fn getGarrisonList(self: *Self) ?*BasicArrayList {
        return self.garrisonList;
    }
    

    pub fn getHouseList(self: *Self) ?*BasicArrayList {
        return self.houseList;
    }
    

    pub fn getLabList(self: *Self) ?*BasicArrayList {
        return self.labList;
    }
    

    pub fn getFactoryList(self: *Self) ?*BasicArrayList {
        return self.factoryList;
    }
    

    pub fn getTotalBuildings(self: *Self) i32 {
        return self.baseList.?.size() + self.garrisonList.?.size() + self.houseList.?.size() + self.labList.?.size() + self.factoryList.?.size();
    }
    

    pub fn removeBuilding(self: *Self, layerInterface: ?*AllBinaryGameLayer) void {
        _ = Inheritance.call(self.buildingList.?, "add", .{ layerInterface });
        if (Inheritance.call(self.getBaseList().?, "remove", .{ layerInterface })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ layerInterface });
        } else if (Inheritance.call(self.getFactoryList().?, "remove", .{ layerInterface })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ layerInterface });
        } else if (Inheritance.call(self.getGarrisonList().?, "remove", .{ layerInterface })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ layerInterface });
        } else if (Inheritance.call(self.getLabList().?, "remove", .{ layerInterface })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ layerInterface });
        } else if (Inheritance.call(self.getHouseList().?, "remove", .{ layerInterface })) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "rtsLayerList").*.?, "remove", .{ layerInterface });
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Bases: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getBaseList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Factory: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getFactoryList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Garrison: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getGarrisonList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Labs: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getLabList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Houses: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getHouseList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Waypoints: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getWaypointsList().?, "size").size() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Units: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.receiverOf(self.getUnitsList().?, "size").size() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getBuildingList(self: *Self) ?*BasicArrayList {
        return self.buildingList;
    }
};

