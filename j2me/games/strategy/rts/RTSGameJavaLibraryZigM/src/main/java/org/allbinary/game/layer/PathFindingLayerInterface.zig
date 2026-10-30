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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DestroyableInterface = @import("org/allbinary/game/combat/destroy/DestroyableInterface.zig").DestroyableInterface;
const GroupInterfaceCompositeInterface = @import("org/allbinary/game/identification/GroupInterfaceCompositeInterface.zig").GroupInterfaceCompositeInterface;
const GameKeyEventSourceInterface = @import("org/allbinary/game/input/GameKeyEventSourceInterface.zig").GameKeyEventSourceInterface;
const WaypointLayerInterface = @import("org/allbinary/game/layer/waypoint/WaypointLayerInterface.zig").WaypointLayerInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;
const RTSLayer2LogHelper = @import("org/allbinary/game/layer/RTSLayer2LogHelper.zig").RTSLayer2LogHelper;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;

// Java interface: an implementation is a pointer and a table of functions
pub const PathFindingLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.PathFindingLayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: WaypointLayerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getEndGeographicMapCellPositionListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    shouldHandleStartSameAsEndFn: *const fn (pointer: *anyopaque) bool,
    getGeographicMapCellPositionAreaFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPositionAreaBase,
    getHudPaintableFn: *const fn (pointer: *anyopaque) ?*SelectionHudPaintable,
    handleCostFn: *const fn (pointer: *anyopaque, ownerLayer: ?*PathFindingLayerInterface) void,
    getParentLayerFn: *const fn (pointer: *anyopaque) ?*PathFindingLayerInterface,
    getRTSLayer2LogHelperFn: *const fn (pointer: *anyopaque) ?*RTSLayer2LogHelper,
    setTargetFn: *const fn (pointer: *anyopaque, targetGameLayer: ?*PathFindingLayerInterface) void,

    pub fn getEndGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.getEndGeographicMapCellPositionListFn(self.pointer);
    }

    pub fn shouldHandleStartSameAsEnd(self: *Self) bool {
        return self.shouldHandleStartSameAsEndFn(self.pointer);
    }

    pub fn getGeographicMapCellPositionArea(self: *Self) ?*GeographicMapCellPositionAreaBase {
        return self.getGeographicMapCellPositionAreaFn(self.pointer);
    }

    pub fn getHudPaintable(self: *Self) ?*SelectionHudPaintable {
        return self.getHudPaintableFn(self.pointer);
    }

    pub fn handleCost(self: *Self, ownerLayer: ?*PathFindingLayerInterface) void {
        return self.handleCostFn(self.pointer, ownerLayer);
    }

    pub fn getParentLayer(self: *Self) ?*PathFindingLayerInterface {
        return self.getParentLayerFn(self.pointer);
    }

    pub fn getRTSLayer2LogHelper(self: *Self) ?*RTSLayer2LogHelper {
        return self.getRTSLayer2LogHelperFn(self.pointer);
    }

    pub fn setTarget(self: *Self, targetGameLayer: ?*PathFindingLayerInterface) void {
        return self.setTargetFn(self.pointer, targetGameLayer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getEndGeographicMapCellPositionList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getEndGeographicMapCellPositionList").getEndGeographicMapCellPositionList());
            }
            fn shouldHandleStartSameAsEnd(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "shouldHandleStartSameAsEnd").shouldHandleStartSameAsEnd();
            }
            fn getGeographicMapCellPositionArea(pointer: *anyopaque) ?*GeographicMapCellPositionAreaBase {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPositionAreaBase, Inheritance.receiver(implementation, "getGeographicMapCellPositionArea").getGeographicMapCellPositionArea());
            }
            fn getHudPaintable(pointer: *anyopaque) ?*SelectionHudPaintable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*SelectionHudPaintable, Inheritance.receiver(implementation, "getHudPaintable").getHudPaintable());
            }
            fn handleCost(pointer: *anyopaque, ownerLayer: ?*PathFindingLayerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "handleCost").handleCost(ownerLayer);
            }
            fn getParentLayer(pointer: *anyopaque) ?*PathFindingLayerInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PathFindingLayerInterface, Inheritance.receiver(implementation, "getParentLayer").getParentLayer());
            }
            fn getRTSLayer2LogHelper(pointer: *anyopaque) ?*RTSLayer2LogHelper {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RTSLayer2LogHelper, Inheritance.receiver(implementation, "getRTSLayer2LogHelper").getRTSLayer2LogHelper());
            }
            fn setTarget(pointer: *anyopaque, targetGameLayer: ?*PathFindingLayerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTarget").setTarget(targetGameLayer);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = WaypointLayerInterface.of(object).?.*, .toStringFn = Methods.toString, .getEndGeographicMapCellPositionListFn = Methods.getEndGeographicMapCellPositionList, .shouldHandleStartSameAsEndFn = Methods.shouldHandleStartSameAsEnd, .getGeographicMapCellPositionAreaFn = Methods.getGeographicMapCellPositionArea, .getHudPaintableFn = Methods.getHudPaintable, .handleCostFn = Methods.handleCost, .getParentLayerFn = Methods.getParentLayer, .getRTSLayer2LogHelperFn = Methods.getRTSLayer2LogHelper, .setTargetFn = Methods.setTarget };
        return this;
    }
};

