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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;

pub const PickedUpLayerInterfaceFactoryBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase";
    pub const java_interfaces = .{ PickedUpLayerInterfaceFactoryInterface };
    // Implements PickedUpLayerInterfaceFactoryInterface
    pub var NULL_PICKED_UP_LAYER_FACTORY_BASE: ?*PickedUpLayerInterfaceFactoryBase = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PICKED_UP_LAYER_FACTORY_BASE = PickedUpLayerInterfaceFactoryBase.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getIconLayer(self: *Self) ?*AllBinaryLayer {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getPickedUpLayerType(self: *Self) ?*PickedUpLayerType {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

