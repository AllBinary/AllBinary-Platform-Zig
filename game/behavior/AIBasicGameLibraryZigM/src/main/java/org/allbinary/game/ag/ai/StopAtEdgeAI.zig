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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const StopAtEdgeAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.StopAtEdgeAI";
    base: BasicAI = undefined,
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.upcast(?*VelocityInterfaceCompositeInterface, (Inheritance.cast(?*VelocityInterfaceCompositeInterface, ownerLayerInterface)));
        const velocityProperties: ?*BasicVelocityProperties = Inheritance.upcast(?*BasicVelocityProperties, velocityInterfaceCompositeInterface.?.getVelocityProperties());
        const x: i32 = Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP();
        const y: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP();
        const x2: i32 = Inheritance.receiver(ownerLayerInterface.?, "getX2").getX2();
        const y2: i32 = Inheritance.receiver(ownerLayerInterface.?, "getY2").getY2();
        const width: i32 = Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth();
        const height: i32 = Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight();
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (x2 + Inheritance.receiverOf(velocityProperties.?.getVelocityXBasicDecimalP().?, "getScaled").getScaled() > displayInfo.?.getLastWidth()) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ displayInfo.?.getLastWidth() - width, y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
            _ = Inheritance.call(velocityProperties.?.getVelocityYBasicDecimalP().?, "setint", .{ 0 });
        }
        if (y2 + Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getScaled").getScaled() > displayInfo.?.getLastHeight()) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ x, displayInfo.?.getLastHeight() - height, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
            _ = Inheritance.call(velocityProperties.?.getVelocityXBasicDecimalP().?, "setint", .{ 0 });
        }
        if (x + Inheritance.receiverOf(velocityProperties.?.getVelocityXBasicDecimalP().?, "getScaled").getScaled() < 0) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ 0, y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
            _ = Inheritance.call(velocityProperties.?.getVelocityYBasicDecimalP().?, "setint", .{ 0 });
        }
        if (y + Inheritance.receiverOf(velocityProperties.?.getVelocityYBasicDecimalP().?, "getScaled").getScaled() < 0) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ x, 0, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
            _ = Inheritance.call(velocityProperties.?.getVelocityXBasicDecimalP().?, "setint", .{ 0 });
        }
    }
};

