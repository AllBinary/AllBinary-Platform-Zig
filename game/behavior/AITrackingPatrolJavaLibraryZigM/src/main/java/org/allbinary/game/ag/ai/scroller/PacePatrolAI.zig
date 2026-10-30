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
// package org.allbinary.game.ag.ai.scroller

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionCompositeInterface = @import("org/allbinary/direction/DirectionCompositeInterface.zig").DirectionCompositeInterface;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const TrackingEvent = @import("org/allbinary/game/tracking/TrackingEvent.zig").TrackingEvent;
const TrackingEventHandler = @import("org/allbinary/game/tracking/TrackingEventHandler.zig").TrackingEventHandler;
const TrackingEventListenerInterface = @import("org/allbinary/game/tracking/TrackingEventListenerInterface.zig").TrackingEventListenerInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerInterface = @import("org/allbinary/layer/LayerInterface.zig").LayerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasePatrolAI = @import("org/allbinary/game/ag/ai/scroller/BasePatrolAI.zig").BasePatrolAI;

pub const PacePatrolAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.PacePatrolAI";
    base: BasePatrolAI = undefined,
    trackingList: ?*BasicArrayList = null,
    firingDistance: i32 = 0,
    isFollowLimitedByTerrain: bool = false,
    // Implements TrackingEventListenerInterface

    fn initFields(this: *Self) void {
        
        this.firingDistance = 0;
        this.isFollowLimitedByTerrain = false;
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasePatrolAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }).*;
        this.initFields();
        _ = Inheritance.call(TrackingEventHandler.getInstance().?, "addListenerInterface", .{ this });
        this.trackingList = Inheritance.upcast(@TypeOf(this.trackingList), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = Inheritance.receiver(self, "update").update();
        const direction: ?*Direction = Inheritance.upcast(?*Direction, self.setFiringDirectionForTargetIfInRange());
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (Object.same(direction, directionFactory.?.LEFT)) {
            if (!Object.same(Inheritance.fieldPointer(self, "lastKeyDirection").*, Inheritance.fieldPointer(self, "keyDirection").*) or !self.isFollowLimitedByTerrain) {
                _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.LEFT });
            }
            Inheritance.fieldPointer(self, "keyDirection").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "keyDirection").*), Canvas.LEFT);
            Inheritance.fieldPointer(self, "lastKeyDirection").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "lastKeyDirection").*), Inheritance.fieldPointer(self, "keyDirection").*);
            Inheritance.fieldPointer(self, "xTotalDistance").* = 0;
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
        } else if (Object.same(direction, directionFactory.?.RIGHT)) {
            if (!Object.same(Inheritance.fieldPointer(self, "lastKeyDirection").*, Inheritance.fieldPointer(self, "keyDirection").*) or !self.isFollowLimitedByTerrain) {
                _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.RIGHT });
            }
            Inheritance.fieldPointer(self, "keyDirection").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "keyDirection").*), Canvas.RIGHT);
            Inheritance.fieldPointer(self, "lastKeyDirection").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "lastKeyDirection").*), Inheritance.fieldPointer(self, "keyDirection").*);
            Inheritance.fieldPointer(self, "xTotalDistance").* = 0;
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
        } else {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Inheritance.fieldPointer(self, "keyDirection").* });
        }
    }
    

    pub fn setFiringDirectionForTargetIfInRange(self: *Self) ?*Direction {
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        var direction: ?*Direction = Inheritance.upcast(?*Direction, directionFactory.?.NOT_BORDERED_WITH);
        var lastTrackingEvent: ?*TrackingEvent = null;
        var lastTrackingLayerInterface: ?*LayerInterface = null;
        var directionCompositeInterface: ?*DirectionCompositeInterface = null;
        const size: i32 = self.trackingList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            lastTrackingEvent = Inheritance.cast(?*TrackingEvent, Inheritance.call(self.trackingList.?, "get", .{ 0 }));
            lastTrackingLayerInterface = Inheritance.upcast(@TypeOf(lastTrackingLayerInterface), Inheritance.receiver(lastTrackingEvent.?, "getLayerInterface").getLayerInterface());
            const x: i32 = Inheritance.receiver(lastTrackingLayerInterface.?, "getXP").getXP();
            const y: i32 = Inheritance.receiver(lastTrackingLayerInterface.?, "getYP").getYP();
            const yDistance: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP() - y - Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight();
            const xDistance: i32 = Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() - x - Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth();
            const absXDistance: i32 = @abs(xDistance);
            const absYDistance: i32 = @abs(yDistance);
            if (absYDistance <= 100) {
                if (absXDistance < @divTrunc(self.getFiringDistance(), 2)) {
                    directionCompositeInterface = Inheritance.cast(?*DirectionCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
                    if (xDistance < 0 and Object.same(directionCompositeInterface.?.getDirection(), directionFactory.?.RIGHT)) {
                        direction = Inheritance.upcast(@TypeOf(direction), directionFactory.?.RIGHT);
                    } else if (xDistance > 0 and Object.same(directionCompositeInterface.?.getDirection(), directionFactory.?.LEFT)) {
                        direction = Inheritance.upcast(@TypeOf(direction), directionFactory.?.LEFT);
                    }
                }
            }
            }
        }
        return direction;
    }
    

    pub fn disable(self: *Self) void {
        _ = self;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onMovement(self: *Self, trackingEvent: ?*TrackingEvent) void {
        _ = self.trackingList.?.clear();
        _ = Inheritance.call(self.trackingList.?, "add", .{ trackingEvent });
    }
    

    pub fn getFiringDistance(self: *Self) i32 {
        return self.firingDistance;
    }
    

    pub fn setFiringDistance(self: *Self, firingDistance: i32) void {
        self.firingDistance = firingDistance;
    }
};

