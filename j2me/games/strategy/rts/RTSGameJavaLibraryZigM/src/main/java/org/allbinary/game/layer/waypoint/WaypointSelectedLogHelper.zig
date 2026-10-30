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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const WaypointLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointLogHelper.zig").WaypointLogHelper;

pub const WaypointSelectedLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper";
    base: WaypointLogHelper = undefined,
    logUtil: ?*LogUtil = null,
    commonSeps: ?*CommonSeps = null,
    stringUtil: ?*StringUtil = null,
    var instanceC: ?*WaypointSelectedLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = WaypointSelectedLogHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointLogHelper.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*WaypointSelectedLogHelper {
        return Inheritance.upcast(?*WaypointSelectedLogHelper, WaypointSelectedLogHelper.instanceC);
    }
    

    pub fn onWaypointEvent(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" onWaypointEvent: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(advancedRTSGameLayer.?, "getName").getName() });
        if (Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer() != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" With Parent: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer().?, "getName").getName() });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("onWaypointEvent") });
    }
    

    pub fn addWaypointFromBuilding(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Adding Waypoint: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(advancedRTSGameLayer.?, "getName").getName() });
        if (Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer() != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" With Parent: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(advancedRTSGameLayer.?, "getParentLayer").getParentLayer().?, "getName").getName() });
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: onWaypointEvent") });
    }
    

    pub fn addWaypointFromBuildingList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, advancedRTSGameLayer: ?*PathFindingLayerInterface, list: ?*BasicArrayList) void {
        _ = advancedRTSGameLayer;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Waypoints: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ list }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: onWaypointEvent") });
    }
    

    pub fn insertWaypoint(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer, waypointName: ?*String) void {
        _ = index;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Insert: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" for Waypoint: ") });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: insertWaypoint") });
    }
    

    pub fn insertWaypointList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, index: i32, rtsLayer: ?*CollidableDestroyableDamageableLayer, waypointName: ?*String, list: ?*BasicArrayList) void {
        _ = index;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ waypointName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Insert: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Waypoints: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ list }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: insertWaypoint") });
    }
    

    pub fn setRandomGeographicMapCellHistoryList(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, pathsList: ?*BasicArrayList) void {
        const size: i32 = pathsList.?.size();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.START });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ size });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" -> ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ pathsList }) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selected: setRandomGeographicMapCellHistory") });
    }
    

    pub fn moveAwayFromBuilding(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" Trying to move away from building") }))), self, String.literal("selected: moveAwayFromBuilding") });
    }
    

    pub fn needToMove(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, unitWaypointBehavior: ?*WaypointBehaviorBase) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ unitWaypointBehavior.?.getMovementLogicAsString() }))), self, String.literal("needToMove") });
    }
    

    pub fn setRandomGeographicMapCellHistory(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" pathsList is null") }))), self, String.literal("setRandomGeographicMapCellHistory") });
    }
    

    pub fn setCurrentPathGeographicMapCellPosition(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, existingCurrentPathGeographicMapCellPosition: ?*GeographicMapCellPosition, currentPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        if (existingCurrentPathGeographicMapCellPosition == null) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" currentPathGeographicMapCellPosition: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ currentPathGeographicMapCellPosition }) }))), self, String.literal("setCurrentPathGeographicMapCellPosition") });
        }
    }
    

    pub fn setNextUnvisitedPathGeographicMapCellPosition(self: *Self, associatedAdvancedRTSGameLayer: ?*PathFindingLayerInterface, existingNextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition: ?*GeographicMapCellPosition) void {
        if (!Object.same(existingNextUnvisitedPathGeographicMapCellPosition, nextUnvisitedPathGeographicMapCellPosition)) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(associatedAdvancedRTSGameLayer.?, "getName").getName() }).?, "append", .{ String.literal(" nextUnvisitedPathGeographicMapCellPosition: ") }).?, "append", .{ Inheritance.call(self.stringUtil.?, "toString", .{ nextUnvisitedPathGeographicMapCellPosition }) }))), self, String.literal("setNextUnvisitedPathGeographicMapCellPosition") });
        }
    }
};

