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
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const GeologicalGeographicMapCellPosition = @import("org/allbinary/game/layer/geological/resources/GeologicalGeographicMapCellPosition.zig").GeologicalGeographicMapCellPosition;
const GeologicalResource = @import("org/allbinary/game/layer/geological/resources/GeologicalResource.zig").GeologicalResource;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const UnitWaypointBehavior = @import("org/allbinary/game/layer/unit/UnitWaypointBehavior.zig").UnitWaypointBehavior;
const WorkSound = @import("org/allbinary/media/audio/WorkSound.zig").WorkSound;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Waypoint = @import("org/allbinary/game/layer/waypoint/Waypoint.zig").Waypoint;
const WaypointInfoHudPaintable = @import("org/allbinary/game/layer/waypoint/WaypointInfoHudPaintable.zig").WaypointInfoHudPaintable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const WorkWaypoint = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WorkWaypoint";
    base: Waypoint = undefined,
    pub var ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 25 }));
    }
    

    pub fn create1(ownerLayer: ?*PathFindingLayerInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Waypoint, "create2", .{ ownerLayer, WorkSound.getInstance() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn visit(self: *Self, unitLayer: ?*UnitLayer) void {
        if (!Object.same(Inheritance.receiver(unitLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(Inheritance.fieldPointer(self, "ownerLayer").*.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            return;
        }
        const size: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "size").size();
        if (size > 0) {
            const occupyList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(Inheritance.fieldPointer(self, "ownerLayer").*.?, "getGeographicMapCellPositionArea").getGeographicMapCellPositionArea().?, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
            var outOfResources: bool = true;
            var geologicalGeographicMapCellPosition: ?*GeologicalGeographicMapCellPosition = null;
            var geologicalResource: ?*GeologicalResource = null;
            {
                var index: i32 = occupyList.?.size();
                while (value_N66645: { index -= 1; break :value_N66645 index; } >= 0) {
                geologicalGeographicMapCellPosition = Inheritance.cast(?*GeologicalGeographicMapCellPosition, Inheritance.call(occupyList.?, "get", .{ index }));
                geologicalResource = Inheritance.upcast(@TypeOf(geologicalResource), Inheritance.receiver(geologicalGeographicMapCellPosition.?, "getGeologicalResource").getGeologicalResource());
                if (geologicalResource.?.getTotal() >= 1) {
                    outOfResources = false;
                    const maxResourceLoad: i32 = @as(i32, @intCast(Inheritance.receiver(unitLayer.?, "getMaxResourceLoad").getMaxResourceLoad()));
                    _ = Inheritance.call(geologicalResource.?, "remove", .{ maxResourceLoad });
                    _ = Inheritance.call(unitLayer.?, "setLoad", .{ maxResourceLoad });
                }
                }
            }
            const waypointInfoHudPaintable: ?*WaypointInfoHudPaintable = Inheritance.cast(?*WaypointInfoHudPaintable, Inheritance.receiver(Inheritance.fieldPointer(self, "ownerLayer").*.?, "getHudPaintable").getHudPaintable());
            if (Object.same(Inheritance.fieldPointer(self, "ownerLayer").*, Inheritance.receiver(waypointInfoHudPaintable.?, "getRtsLayer").getRtsLayer())) {
                _ = Inheritance.receiver(waypointInfoHudPaintable.?, "updateSelectionInfo").updateSelectionInfo();
            }
            if (!outOfResources) {
                const unitWaypointBehavior: ?*UnitWaypointBehavior = Inheritance.cast(?*UnitWaypointBehavior, Inheritance.receiver(unitLayer.?, "getWaypointBehavior").getWaypointBehavior());
                var rtsLayer: ?*RTSLayer = null;
                while (Inheritance.receiverOf(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "size").size() > 0) {
                    rtsLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "get", .{ 0 }));
                    if (Inheritance.receiver(rtsLayer.?, "isDestroyed").isDestroyed()) {
                        _ = Inheritance.call(Inheritance.receiver(self, "getConnectedWaypointList").getConnectedWaypointList().?, "remove", .{ rtsLayer });
                    } else {
                        _ = Inheritance.call(unitWaypointBehavior.?, "insertWaypoint", .{ 0, rtsLayer });
                        break;
                    }
                }
            }
        }
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return 2;
    }
};

