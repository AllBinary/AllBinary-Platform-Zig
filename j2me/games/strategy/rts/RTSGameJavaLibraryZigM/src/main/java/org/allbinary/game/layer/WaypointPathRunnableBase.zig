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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerDistanceUtil = @import("org/allbinary/math/LayerDistanceUtil.zig").LayerDistanceUtil;
const PriorityRunnable = @import("org/allbinary/thread/PriorityRunnable.zig").PriorityRunnable;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const WaypointPathRunnableBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.WaypointPathRunnableBase";
    layerDistanceUtil: ?*LayerDistanceUtil = null,
    pathFindingLayer: ?*PathFindingLayerInterface = null,
    targetPathFindingLayer: ?*PathFindingLayerInterface = null,
    priorityP: i32 = 0,
    runningP: bool = false,
    // Implements RunnableInterface
    // Implements PriorityRunnable

    fn initFields(this: *Self) void {
        this.layerDistanceUtil = Inheritance.upcast(?*LayerDistanceUtil, LayerDistanceUtil.getInstance());
        this.pathFindingLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
        this.targetPathFindingLayer = Inheritance.upcast(?*PathFindingLayerInterface, NullPathFindingLayer.NULL_PATH_FINDING_LAYER);
        this.priorityP = @as(i32, std.math.maxInt(i32));
        this.runningP = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isRunning(self: *Self) bool {
        return self.runningP;
    }
    

    pub fn setRunning(self: *Self, isRunning_: bool) void {
        self.runningP = isRunning_;
    }
    

    // throws Exception
    pub fn setThread(self: *Self, thread: ?*Thread) void {
        _ = thread;
        _ = self;
    }
    

    pub fn setTargetLayer(self: *Self, waypointLayer: ?*PathFindingLayerInterface) void {
        self.targetPathFindingLayer = waypointLayer;
        _ = self.setPriority();
    }
    

    pub fn setPriority(self: *Self) void {
        const pathFindingLayer: ?*AllBinaryLayer = Inheritance.cast(?*AllBinaryLayer, self.pathFindingLayer);
        const targetLayer: ?*AllBinaryLayer = Inheritance.cast(?*AllBinaryLayer, self.targetPathFindingLayer);
        if (targetLayer != null) {
            const distance: i32 = Inheritance.call(self.layerDistanceUtil.?, "getDistance", .{ targetLayer, pathFindingLayer });
            const distanceCategory: i32 = @divTrunc(distance, 70);
            self.priorityP = distanceCategory;
        }
    }
    

    pub fn getTargetLayer(self: *Self) ?*PathFindingLayerInterface {
        return self.targetPathFindingLayer;
    }
    

    pub fn setUnitLayer(self: *Self, unitLayer: ?*PathFindingLayerInterface) void {
        self.pathFindingLayer = unitLayer;
    }
    

    pub fn getPriority(self: *Self) i32 {
        return self.priorityP;
    }
    

    pub fn isDone(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn run(self: *Self) void {
        _ = self;
    }
    

    pub fn reset(self: *Self) void {
        _ = self;
    }
};

