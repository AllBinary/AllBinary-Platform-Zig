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
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const RotationAnimationInterface = @import("org/allbinary/animation/RotationAnimationInterface.zig").RotationAnimationInterface;
const RotationAnimationInterfaceCompositeInterface = @import("org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.zig").RotationAnimationInterfaceCompositeInterface;
const LurchAI = @import("org/allbinary/game/ag/ai/tactical/LurchAI.zig").LurchAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AngleIncrementInfo = @import("org/allbinary/math/AngleIncrementInfo.zig").AngleIncrementInfo;

pub const LurchRotationAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.LurchRotationAI";
    base: LurchAI = undefined,
    rotationAnimationInterface: ?*IndexedAnimation = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LurchAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.rotationAnimationInterface = Inheritance.upcast(@TypeOf(this.rotationAnimationInterface), Inheritance.receiver(rotationAnimationInterfaceCompositeInterface.?, "getRotationAnimationInterface").getRotationAnimationInterface());
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn reverse(self: *Self) void {
        _ = self.base.reverse();
        _ = self.update();
    }
    

    pub fn update(self: *Self) void {
        if (Inheritance.fieldPointer(self, "currentRelativeAngle").* == 0) {
            const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.cast(?*RotationAnimationInterface, self.rotationAnimationInterface);
            const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
            const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
            _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue() });
        } else if (Inheritance.fieldPointer(self, "currentRelativeAngle").* == 180) {
            const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.cast(?*RotationAnimationInterface, self.rotationAnimationInterface);
            const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
            const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
            _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.LEFT_FRAME.?, "intValue").intValue() });
        }
    }
};

