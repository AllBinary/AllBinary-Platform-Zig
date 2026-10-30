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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerEvent = @import("org/allbinary/game/layer/RTSLayerEvent.zig").RTSLayerEvent;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PrimaryWaypointHelper = @import("org/allbinary/game/input/form/PrimaryWaypointHelper.zig").PrimaryWaypointHelper;

pub const AssignWaypointsUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.AssignWaypointsUtil";
    logUtil: ?*LogUtil = null,
    WAYPOINT_EVENT: ?*RTSLayerEvent = null,
    var instance: ?*AssignWaypointsUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AssignWaypointsUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.WAYPOINT_EVENT = Inheritance.callStatic(RTSLayerEvent, "create1", .{ NullPathFindingLayer.NULL_PATH_FINDING_LAYER });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AssignWaypointsUtil {
        return Inheritance.upcast(?*AssignWaypointsUtil, AssignWaypointsUtil.instance);
    }
    

    pub fn set(self: *Self, unitLayer: ?*UnitLayer, ownerAdvancedRTSGameLayer: ?*AdvancedRTSGameLayer) void {
        { // try
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(ownerAdvancedRTSGameLayer.?, "getWaypointBehavior").getWaypointBehavior().?, "getOwnedWaypointList").getOwnedWaypointList());
            const unitWaypointBehavior: ?*UnitWaypointBehavior = Inheritance.cast(?*UnitWaypointBehavior, Inheritance.receiver(unitLayer.?, "getWaypointBehavior").getWaypointBehavior());
            {
                var index: i32 = list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                const waypointLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ index }));
                _ = Inheritance.call(self.WAYPOINT_EVENT.?, "setRtsLayer", .{ waypointLayer });
                _ = Inheritance.call(unitWaypointBehavior.?, "onWaypointEvent", .{ self.WAYPOINT_EVENT });
                }
            }
            const waypointLayer: ?*PathFindingLayerInterface = Inheritance.upcast(?*PathFindingLayerInterface, Inheritance.receiverOf(PrimaryWaypointHelper.getInstance().?, "getWaypointLayer").getWaypointLayer());
            if (!Object.same(waypointLayer, NullPathFindingLayer.NULL_PATH_FINDING_LAYER)) {
                _ = Inheritance.call(self.WAYPOINT_EVENT.?, "setRtsLayer", .{ waypointLayer });
                _ = Inheritance.call(unitWaypointBehavior.?, "onWaypointEvent", .{ self.WAYPOINT_EVENT });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("set"), e });
    }
};

