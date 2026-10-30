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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const RotationAnimation = @import("org/allbinary/animation/RotationAnimation.zig").RotationAnimation;
const LayerInterface = @import("org/allbinary/layer/LayerInterface.zig").LayerInterface;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const GeographicMapCellPositionTracking = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking.zig").GeographicMapCellPositionTracking;
const VehiclePropertiesCompositeInterface = @import("org/allbinary/game/layer/VehiclePropertiesCompositeInterface.zig").VehiclePropertiesCompositeInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const VehicleLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.VehicleLayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: LayerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getGameKeyEventListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getSpeedBasicDecimalFn: *const fn (pointer: *anyopaque) ?*BasicDecimal,
    isReadyForExplosionFn: *const fn (pointer: *anyopaque) bool,
    getRotationAnimationInterfaceFn: *const fn (pointer: *anyopaque) ?*RotationAnimation,
    setRotationAnimationInterfaceFn: *const fn (pointer: *anyopaque, animationInterface: ?*RotationAnimation) void,
    isDestroyedFn: *const fn (pointer: *anyopaque) bool,
    isFinishFn: *const fn (pointer: *anyopaque) bool,
    getFinalPositionFn: *const fn (pointer: *anyopaque) i32,
    handleFinishFn: *const fn (pointer: *anyopaque) void,
    getGeographicMapCellPositionTrackingFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPositionTracking,
    getGeographicMapCellHistoryArrayFn: *const fn (pointer: *anyopaque) []?*GeographicMapCellHistory,
    setGeographicMapCellHistoryArrayFn: *const fn (pointer: *anyopaque, geographicMapCellHistory: []?*GeographicMapCellHistory) void,

    pub fn getGameKeyEventList(self: *Self) ?*BasicArrayList {
        return self.getGameKeyEventListFn(self.pointer);
    }

    pub fn getSpeedBasicDecimal(self: *Self) ?*BasicDecimal {
        return self.getSpeedBasicDecimalFn(self.pointer);
    }

    pub fn isReadyForExplosion(self: *Self) bool {
        return self.isReadyForExplosionFn(self.pointer);
    }

    pub fn getRotationAnimationInterface(self: *Self) ?*RotationAnimation {
        return self.getRotationAnimationInterfaceFn(self.pointer);
    }

    pub fn setRotationAnimationInterface(self: *Self, animationInterface: ?*RotationAnimation) void {
        return self.setRotationAnimationInterfaceFn(self.pointer, animationInterface);
    }

    pub fn isDestroyed(self: *Self) bool {
        return self.isDestroyedFn(self.pointer);
    }

    pub fn isFinish(self: *Self) bool {
        return self.isFinishFn(self.pointer);
    }

    pub fn getFinalPosition(self: *Self) i32 {
        return self.getFinalPositionFn(self.pointer);
    }

    pub fn handleFinish(self: *Self) void {
        return self.handleFinishFn(self.pointer);
    }

    pub fn getGeographicMapCellPositionTracking(self: *Self) ?*GeographicMapCellPositionTracking {
        return self.getGeographicMapCellPositionTrackingFn(self.pointer);
    }

    pub fn getGeographicMapCellHistoryArray(self: *Self) []?*GeographicMapCellHistory {
        return self.getGeographicMapCellHistoryArrayFn(self.pointer);
    }

    pub fn setGeographicMapCellHistoryArray(self: *Self, geographicMapCellHistory: []?*GeographicMapCellHistory) void {
        return self.setGeographicMapCellHistoryArrayFn(self.pointer, geographicMapCellHistory);
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
            fn getGameKeyEventList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getGameKeyEventList").getGameKeyEventList());
            }
            fn getSpeedBasicDecimal(pointer: *anyopaque) ?*BasicDecimal {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicDecimal, Inheritance.receiver(implementation, "getSpeedBasicDecimal").getSpeedBasicDecimal());
            }
            fn isReadyForExplosion(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isReadyForExplosion").isReadyForExplosion();
            }
            fn getRotationAnimationInterface(pointer: *anyopaque) ?*RotationAnimation {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RotationAnimation, Inheritance.receiver(implementation, "getRotationAnimationInterface").getRotationAnimationInterface());
            }
            fn setRotationAnimationInterface(pointer: *anyopaque, animationInterface: ?*RotationAnimation) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRotationAnimationInterface").setRotationAnimationInterface(animationInterface);
            }
            fn isDestroyed(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDestroyed").isDestroyed();
            }
            fn isFinish(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isFinish").isFinish();
            }
            fn getFinalPosition(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getFinalPosition").getFinalPosition();
            }
            fn handleFinish(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "handleFinish").handleFinish();
            }
            fn getGeographicMapCellPositionTracking(pointer: *anyopaque) ?*GeographicMapCellPositionTracking {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPositionTracking, Inheritance.receiver(implementation, "getGeographicMapCellPositionTracking").getGeographicMapCellPositionTracking());
            }
            fn getGeographicMapCellHistoryArray(pointer: *anyopaque) []?*GeographicMapCellHistory {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getGeographicMapCellHistoryArray").getGeographicMapCellHistoryArray();
            }
            fn setGeographicMapCellHistoryArray(pointer: *anyopaque, geographicMapCellHistory: []?*GeographicMapCellHistory) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setGeographicMapCellHistoryArray").setGeographicMapCellHistoryArray(geographicMapCellHistory);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = LayerInterface.of(object).?.*, .toStringFn = Methods.toString, .getGameKeyEventListFn = Methods.getGameKeyEventList, .getSpeedBasicDecimalFn = Methods.getSpeedBasicDecimal, .isReadyForExplosionFn = Methods.isReadyForExplosion, .getRotationAnimationInterfaceFn = Methods.getRotationAnimationInterface, .setRotationAnimationInterfaceFn = Methods.setRotationAnimationInterface, .isDestroyedFn = Methods.isDestroyed, .isFinishFn = Methods.isFinish, .getFinalPositionFn = Methods.getFinalPosition, .handleFinishFn = Methods.handleFinish, .getGeographicMapCellPositionTrackingFn = Methods.getGeographicMapCellPositionTracking, .getGeographicMapCellHistoryArrayFn = Methods.getGeographicMapCellHistoryArray, .setGeographicMapCellHistoryArrayFn = Methods.setGeographicMapCellHistoryArray };
        return this;
    }
};

