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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const ArtificialIntelligence = @import("org/allbinary/ai/ArtificialIntelligence.zig").ArtificialIntelligence;
const ArtificialIntelligenceTransitionInterface = @import("org/allbinary/ai/ArtificialIntelligenceTransitionInterface.zig").ArtificialIntelligenceTransitionInterface;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const RotationAnimationInterface = @import("org/allbinary/animation/RotationAnimationInterface.zig").RotationAnimationInterface;
const RotationAnimationInterfaceCompositeInterface = @import("org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.zig").RotationAnimationInterfaceCompositeInterface;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityInterface = @import("org/allbinary/game/physics/velocity/VelocityInterface.zig").VelocityInterface;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const AngleIncrementInfo = @import("org/allbinary/math/AngleIncrementInfo.zig").AngleIncrementInfo;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const HorizontaRotationManeuverAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.HorizontaRotationManeuverAI";
    base: BasicAI = undefined,
    circularIndexUtil: ?*CircularIndexUtil = null,
    currentSpeedDivisor: i32 = 0,
    rotationAnimationInterface: ?*IndexedAnimation = null,
    baseVelocityInterface: ?*BasicVelocityProperties = null,
    velocityInterface: ?*VelocityInterface = null,
    // Implements ArtificialIntelligenceTransitionInterface

    fn initFields(this: *Self) void {
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstanceAt", .{ 10, @as(i32, std.math.maxInt(i32)) }));
        this.currentSpeedDivisor = 5;
        
        
        
    }
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.rotationAnimationInterface = Inheritance.upcast(@TypeOf(this.rotationAnimationInterface), Inheritance.receiver(rotationAnimationInterfaceCompositeInterface.?, "getRotationAnimationInterface").getRotationAnimationInterface());
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.baseVelocityInterface = Inheritance.upcast(@TypeOf(this.baseVelocityInterface), velocityInterfaceCompositeInterface.?.getVelocityProperties());
        this.velocityInterface = Inheritance.cast(?*VelocityInterface, this.baseVelocityInterface);
        const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.cast(?*RotationAnimationInterface, this.rotationAnimationInterface);
        const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
        _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn transition(self: *Self) void {
        const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.cast(?*RotationAnimationInterface, self.rotationAnimationInterface);
        const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
        const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue() });
        const allbinaryLayer: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        _ = Inheritance.call(allbinaryLayer.?, "setPosition", .{ Inheritance.receiver(allbinaryLayer.?, "getXP").getXP(), 1, Inheritance.receiver(allbinaryLayer.?, "getZP").getZP() });
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.upcast(?*RotationAnimationInterface, (Inheritance.cast(?*RotationAnimationInterface, self.rotationAnimationInterface)));
        const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
        const frame: i32 = Inheritance.receiver(self.rotationAnimationInterface.?, "getFrame").getFrame();
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        if (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() - Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth() <= 0 and frame == Inheritance.receiverOf(angleIncrementInfo.?.LEFT_FRAME.?, "intValue").intValue()) {
            _ = self.reverse();
            _ = self.drop();
        }
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (Inheritance.receiver(ownerLayerInterface.?, "getX2").getX2() + Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth() > displayInfo.?.getLastWidth() and frame == Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue()) {
            _ = self.reverse();
            _ = self.accelerate();
            _ = self.drop();
        }
        const index: i32 = self.circularIndexUtil.?.getIndex();
        if (@rem(index, self.currentSpeedDivisor) == 0 and @rem(index, 2) == 0) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.UP });
            _ = Inheritance.call(self.velocityInterface.?, "limitMaxXYVelocity", .{ (divide_N67853: { const left_N67853 = Inheritance.receiver(self.velocityInterface.?, "getMaxForwardVelocity").getMaxForwardVelocity(); const right_N67853 = self.currentSpeedDivisor; break :divide_N67853 if (comptime @typeInfo(@TypeOf(left_N67853)) == .int or @TypeOf(left_N67853) == comptime_int) @divTrunc(left_N67853, right_N67853) else left_N67853 / right_N67853; }) });
        }
        _ = self.circularIndexUtil.?.next();
        if (frame == Inheritance.receiverOf(angleIncrementInfo.?.LEFT_FRAME.?, "intValue").intValue()) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM0 });
        } else if (frame == Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue()) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_POUND });
        }
    }
    

    pub fn reverse(self: *Self) void {
        const rotationAnimationInterface: ?*RotationAnimationInterface = Inheritance.cast(?*RotationAnimationInterface, self.rotationAnimationInterface);
        const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, Inheritance.receiverOf(Inheritance.receiver(rotationAnimationInterface.?, "getAngleInfoP").getAngleInfoP().?, "getAngleIncrementInfo").getAngleIncrementInfo());
        const frame: i32 = Inheritance.receiver(self.rotationAnimationInterface.?, "getFrame").getFrame();
        if (frame == Inheritance.receiverOf(angleIncrementInfo.?.LEFT_FRAME.?, "intValue").intValue()) {
            const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
            _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue() });
            _ = self.baseVelocityInterface.?.zero();
        } else if (frame == Inheritance.receiverOf(angleIncrementInfo.?.RIGHT_FRAME.?, "intValue").intValue()) {
            const rotationAnimationInterfaceCompositeInterface: ?*RotationAnimationInterfaceCompositeInterface = Inheritance.cast(?*RotationAnimationInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
            _ = Inheritance.call(rotationAnimationInterfaceCompositeInterface.?, "setFrame", .{ Inheritance.receiverOf(angleIncrementInfo.?.LEFT_FRAME.?, "intValue").intValue() });
            _ = self.baseVelocityInterface.?.zero();
        }
    }
    

    pub fn accelerate(self: *Self) void {
        if (self.currentSpeedDivisor > 1) {
            self.currentSpeedDivisor -= 1;
        }
    }
    

    pub fn drop(self: *Self) void {
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        var y: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP();
        if (Inheritance.receiver(ownerLayerInterface.?, "getY2").getY2() + Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight() > displayInfo.?.getLastHeight()) {
            y = 0;
        } else {
            y += Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight() + 1;
        }
        _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP(), y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
    }
    

    pub fn getId(self: *Self) i32 {
        _ = self;
        return ArtificialIntelligence.AI_ID;
    }
};

