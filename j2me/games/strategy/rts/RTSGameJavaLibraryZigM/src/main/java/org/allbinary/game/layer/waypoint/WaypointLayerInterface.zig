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
const CaptionAnimationHelperBase = @import("org/allbinary/animation/caption/CaptionAnimationHelperBase.zig").CaptionAnimationHelperBase;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Waypoint2LogHelper = @import("org/allbinary/game/layer/waypoint/Waypoint2LogHelper.zig").Waypoint2LogHelper;
const WaypointLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointLogHelper.zig").WaypointLogHelper;
const WaypointRunnableLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper.zig").WaypointRunnableLogHelper;

// Java interface: an implementation is a pointer and a table of functions
pub const WaypointLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointLayerInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    initFn: *const fn (pointer: *anyopaque, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void,
    getMoveOutOfBuildAreaPathFn: *const fn (pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList,
    setClosestGeographicMapCellHistoryFn: *const fn (pointer: *anyopaque, pathsList: ?*BasicArrayList) void,
    teleportToFn: *const fn (pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) void,
    setLoadFn: *const fn (pointer: *anyopaque, resource: i32) void,
    getSurroundingGeographicMapCellPositionListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    isSelectedFn: *const fn (pointer: *anyopaque) bool,
    shouldAddWaypointFromBuildingFn: *const fn (pointer: *anyopaque) bool,
    isShowMoreCaptionStatesFn: *const fn (pointer: *anyopaque) bool,
    trackToFn: *const fn (pointer: *anyopaque, reason: ?*String) void,
    trackToDXYFn: *const fn (pointer: *anyopaque, dx: i32, dy: i32) void,
    buildingChaseFn: *const fn (pointer: *anyopaque, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool,
    getTrackingEventFn: *const fn (pointer: *anyopaque) ?*TrackingEvent,
    allStopFn: *const fn (pointer: *anyopaque) void,
    isWaypointListEmptyOrOnlyTargetsFn: *const fn (pointer: *anyopaque) bool,
    getCurrentGeographicMapCellPositionFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPosition,
    getTopLeftGeographicMapCellPositionFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPosition,
    getCaptionAnimationHelperFn: *const fn (pointer: *anyopaque) ?*CaptionAnimationHelperBase,
    getWaypointBehaviorFn: *const fn (pointer: *anyopaque) ?*WaypointBehaviorBase,
    getWaypointLogHelperFn: *const fn (pointer: *anyopaque) ?*WaypointLogHelper,
    getWaypoint2LogHelperFn: *const fn (pointer: *anyopaque) ?*Waypoint2LogHelper,
    getWaypointRunnableLogHelperFn: *const fn (pointer: *anyopaque) ?*WaypointRunnableLogHelper,

    pub fn init(self: *Self, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
        return self.initFn(self.pointer, geographicMapCellHistory, geographicMapCellPositionBasicArrayList);
    }

    pub fn getMoveOutOfBuildAreaPath(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
        return self.getMoveOutOfBuildAreaPathFn(self.pointer, geographicMapCellPosition);
    }

    pub fn setClosestGeographicMapCellHistory(self: *Self, pathsList: ?*BasicArrayList) void {
        return self.setClosestGeographicMapCellHistoryFn(self.pointer, pathsList);
    }

    pub fn teleportTo(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        return self.teleportToFn(self.pointer, geographicMapCellPosition);
    }

    pub fn setLoad(self: *Self, resource: i32) void {
        return self.setLoadFn(self.pointer, resource);
    }

    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.getSurroundingGeographicMapCellPositionListFn(self.pointer);
    }

    pub fn isSelected(self: *Self) bool {
        return self.isSelectedFn(self.pointer);
    }

    pub fn shouldAddWaypointFromBuilding(self: *Self) bool {
        return self.shouldAddWaypointFromBuildingFn(self.pointer);
    }

    pub fn isShowMoreCaptionStates(self: *Self) bool {
        return self.isShowMoreCaptionStatesFn(self.pointer);
    }

    pub fn trackTo(self: *Self, reason: ?*String) void {
        return self.trackToFn(self.pointer, reason);
    }

    pub fn trackToDXY(self: *Self, dx: i32, dy: i32) void {
        return self.trackToDXYFn(self.pointer, dx, dy);
    }

    pub fn buildingChase(self: *Self, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
        return self.buildingChaseFn(self.pointer, allbinaryLayer, cellPosition);
    }

    pub fn getTrackingEvent(self: *Self) ?*TrackingEvent {
        return self.getTrackingEventFn(self.pointer);
    }

    pub fn allStop(self: *Self) void {
        return self.allStopFn(self.pointer);
    }

    pub fn isWaypointListEmptyOrOnlyTargets(self: *Self) bool {
        return self.isWaypointListEmptyOrOnlyTargetsFn(self.pointer);
    }

    pub fn getCurrentGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.getCurrentGeographicMapCellPositionFn(self.pointer);
    }

    pub fn getTopLeftGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.getTopLeftGeographicMapCellPositionFn(self.pointer);
    }

    pub fn getCaptionAnimationHelper(self: *Self) ?*CaptionAnimationHelperBase {
        return self.getCaptionAnimationHelperFn(self.pointer);
    }

    pub fn getWaypointBehavior(self: *Self) ?*WaypointBehaviorBase {
        return self.getWaypointBehaviorFn(self.pointer);
    }

    pub fn getWaypointLogHelper(self: *Self) ?*WaypointLogHelper {
        return self.getWaypointLogHelperFn(self.pointer);
    }

    pub fn getWaypoint2LogHelper(self: *Self) ?*Waypoint2LogHelper {
        return self.getWaypoint2LogHelperFn(self.pointer);
    }

    pub fn getWaypointRunnableLogHelper(self: *Self) ?*WaypointRunnableLogHelper {
        return self.getWaypointRunnableLogHelperFn(self.pointer);
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
            fn init(pointer: *anyopaque, geographicMapCellHistory: ?*GeographicMapCellHistory, geographicMapCellPositionBasicArrayList: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "init").init(geographicMapCellHistory, geographicMapCellPositionBasicArrayList);
            }
            fn getMoveOutOfBuildAreaPath(pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getMoveOutOfBuildAreaPath").getMoveOutOfBuildAreaPath(geographicMapCellPosition));
            }
            fn setClosestGeographicMapCellHistory(pointer: *anyopaque, pathsList: ?*BasicArrayList) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setClosestGeographicMapCellHistory").setClosestGeographicMapCellHistory(pathsList);
            }
            fn teleportTo(pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "teleportTo").teleportTo(geographicMapCellPosition);
            }
            fn setLoad(pointer: *anyopaque, resource: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLoad").setLoad(resource);
            }
            fn getSurroundingGeographicMapCellPositionList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
            }
            fn isSelected(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isSelected").isSelected();
            }
            fn shouldAddWaypointFromBuilding(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "shouldAddWaypointFromBuilding").shouldAddWaypointFromBuilding();
            }
            fn isShowMoreCaptionStates(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isShowMoreCaptionStates").isShowMoreCaptionStates();
            }
            fn trackTo(pointer: *anyopaque, reason: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "trackTo").trackTo(reason);
            }
            fn trackToDXY(pointer: *anyopaque, dx: i32, dy: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "trackToDXY").trackToDXY(dx, dy);
            }
            fn buildingChase(pointer: *anyopaque, allbinaryLayer: ?*AllBinaryLayer, cellPosition: ?*GeographicMapCellPosition) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "buildingChase").buildingChase(allbinaryLayer, cellPosition);
            }
            fn getTrackingEvent(pointer: *anyopaque) ?*TrackingEvent {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TrackingEvent, Inheritance.receiver(implementation, "getTrackingEvent").getTrackingEvent());
            }
            fn allStop(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "allStop").allStop();
            }
            fn isWaypointListEmptyOrOnlyTargets(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isWaypointListEmptyOrOnlyTargets").isWaypointListEmptyOrOnlyTargets();
            }
            fn getCurrentGeographicMapCellPosition(pointer: *anyopaque) ?*GeographicMapCellPosition {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(implementation, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
            }
            fn getTopLeftGeographicMapCellPosition(pointer: *anyopaque) ?*GeographicMapCellPosition {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(implementation, "getTopLeftGeographicMapCellPosition").getTopLeftGeographicMapCellPosition());
            }
            fn getCaptionAnimationHelper(pointer: *anyopaque) ?*CaptionAnimationHelperBase {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*CaptionAnimationHelperBase, Inheritance.receiver(implementation, "getCaptionAnimationHelper").getCaptionAnimationHelper());
            }
            fn getWaypointBehavior(pointer: *anyopaque) ?*WaypointBehaviorBase {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*WaypointBehaviorBase, Inheritance.receiver(implementation, "getWaypointBehavior").getWaypointBehavior());
            }
            fn getWaypointLogHelper(pointer: *anyopaque) ?*WaypointLogHelper {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*WaypointLogHelper, Inheritance.receiver(implementation, "getWaypointLogHelper").getWaypointLogHelper());
            }
            fn getWaypoint2LogHelper(pointer: *anyopaque) ?*Waypoint2LogHelper {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Waypoint2LogHelper, Inheritance.receiver(implementation, "getWaypoint2LogHelper").getWaypoint2LogHelper());
            }
            fn getWaypointRunnableLogHelper(pointer: *anyopaque) ?*WaypointRunnableLogHelper {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*WaypointRunnableLogHelper, Inheritance.receiver(implementation, "getWaypointRunnableLogHelper").getWaypointRunnableLogHelper());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .initFn = Methods.init, .getMoveOutOfBuildAreaPathFn = Methods.getMoveOutOfBuildAreaPath, .setClosestGeographicMapCellHistoryFn = Methods.setClosestGeographicMapCellHistory, .teleportToFn = Methods.teleportTo, .setLoadFn = Methods.setLoad, .getSurroundingGeographicMapCellPositionListFn = Methods.getSurroundingGeographicMapCellPositionList, .isSelectedFn = Methods.isSelected, .shouldAddWaypointFromBuildingFn = Methods.shouldAddWaypointFromBuilding, .isShowMoreCaptionStatesFn = Methods.isShowMoreCaptionStates, .trackToFn = Methods.trackTo, .trackToDXYFn = Methods.trackToDXY, .buildingChaseFn = Methods.buildingChase, .getTrackingEventFn = Methods.getTrackingEvent, .allStopFn = Methods.allStop, .isWaypointListEmptyOrOnlyTargetsFn = Methods.isWaypointListEmptyOrOnlyTargets, .getCurrentGeographicMapCellPositionFn = Methods.getCurrentGeographicMapCellPosition, .getTopLeftGeographicMapCellPositionFn = Methods.getTopLeftGeographicMapCellPosition, .getCaptionAnimationHelperFn = Methods.getCaptionAnimationHelper, .getWaypointBehaviorFn = Methods.getWaypointBehavior, .getWaypointLogHelperFn = Methods.getWaypointLogHelper, .getWaypoint2LogHelperFn = Methods.getWaypoint2LogHelper, .getWaypointRunnableLogHelperFn = Methods.getWaypointRunnableLogHelper };
        return this;
    }
};

