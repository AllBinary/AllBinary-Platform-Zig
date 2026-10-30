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
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;

pub const RTSLayer2LogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayer2LogHelper";
    var instance: ?*RTSLayer2LogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RTSLayer2LogHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*RTSLayer2LogHelper {
        return Inheritance.upcast(?*RTSLayer2LogHelper, RTSLayer2LogHelper.instance);
    }
    

    pub fn steeringUp(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = pathFindingLayerInterface;
        _ = self;
    }
    

    pub fn steeringFireOrStop(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = pathFindingLayerInterface;
        _ = self;
    }
    

    pub fn buildingAbove(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = pathFindingLayerInterface;
        _ = self;
    }
    

    pub fn buildingChaseLeft(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = pathFindingLayerInterface;
        _ = angle;
        _ = self;
    }
    

    pub fn buildingChaseRight(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = pathFindingLayerInterface;
        _ = angle;
        _ = self;
    }
    

    pub fn buildingDown(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = pathFindingLayerInterface;
        _ = self;
    }
    

    pub fn buildingChaseDown(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = pathFindingLayerInterface;
        _ = angle;
        _ = self;
    }
    

    pub fn buildingChaseUp(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = pathFindingLayerInterface;
        _ = angle;
        _ = self;
    }
    

    pub fn buildingLeft(self: *Self) void {
        _ = self;
    }
    

    pub fn buildingRight(self: *Self) void {
        _ = self;
    }
};

