// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPositionTracking = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking.zig").GeographicMapCellPositionTracking;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const VehicleLayerInterface = @import("org/allbinary/game/layer/VehicleLayerInterface.zig").VehicleLayerInterface;
const VehicleProperties = @import("org/allbinary/game/layer/VehicleProperties.zig").VehicleProperties;

pub const NullVehicleLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.NullVehicleLayer";
    pub const java_interfaces = .{ VehicleLayerInterface };
    // Implements VehicleLayerInterface
    pub var NULL_VEHICLE_LAYER: ?*NullVehicleLayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_VEHICLE_LAYER = NullVehicleLayer.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGroupInterface(self: *Self) []?*Group {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setPosition(self: *Self, x: i32, y: i32, z: i32) void {
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHeight(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getWidth(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHalfHeight(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getHalfWidth(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getXP(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getYP(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getZP(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getX2(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getY2(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getZ2(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isVisible(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn moveDXYZ(self: *Self, dx: i32, dy: i32, dz: i32) void {
        _ = dx;
        _ = dy;
        _ = dz;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setVisible(self: *Self, visible: bool) void {
        _ = visible;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn implmentsTickableInterface(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn implmentsCollidableInterface(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn implmentsGameInputInterface(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn implmentsArtificialIntelligenceCompositeInterface(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getVehicleProperties(self: *Self) ?*VehicleProperties {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGameKeyEventList(self: *Self) ?*BasicArrayList {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getSpeedBasicDecimal(self: *Self) ?*BasicDecimal {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isReadyForExplosion(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRotationAnimationInterface(self: *Self) ?*RotationAnimation {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setRotationAnimationInterface(self: *Self, animationInterface: ?*RotationAnimation) void {
        _ = animationInterface;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isDestroyed(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn isFinish(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getFinalPosition(self: *Self) i32 {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn handleFinish(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeographicMapCellPositionTracking(self: *Self) ?*GeographicMapCellPositionTracking {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeographicMapCellHistoryArray(self: *Self) []?*GeographicMapCellHistory {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setGeographicMapCellHistoryArray(self: *Self, geographicMapCellHistory: []?*GeographicMapCellHistory) void {
        _ = geographicMapCellHistory;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};

