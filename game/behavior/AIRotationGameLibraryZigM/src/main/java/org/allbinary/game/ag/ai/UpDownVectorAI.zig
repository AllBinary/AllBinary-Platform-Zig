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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;

pub const UpDownVectorAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.UpDownVectorAI";
    base: BasicAI = undefined,
    velocityInterface: ?*BasicVelocityProperties = null,
    index: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.index = 0;
    }
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, Inheritance.receiver(this, "getOwnerLayerInterface").getOwnerLayerInterface());
        this.velocityInterface = Inheritance.upcast(@TypeOf(this.velocityInterface), velocityInterfaceCompositeInterface.?.getVelocityProperties());
        _ = Inheritance.call(this.velocityInterface.?.getVelocityYBasicDecimalP().?, "setint", .{ 0 });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const y: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface().?, "getHeight").getHeight() * 270;
        if (self.index < 5) {
            const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, self.velocityInterface.?.getVelocityYBasicDecimalP());
            _ = Inheritance.call(basicDecimal.?, "setint", .{ 0 });
            _ = Inheritance.call(basicDecimal.?, "addint", .{ y });
            self.index += 1;
        } else if (self.index < 10) {
            const basicDecimal: ?*BasicDecimal = Inheritance.upcast(?*BasicDecimal, self.velocityInterface.?.getVelocityYBasicDecimalP());
            _ = Inheritance.call(basicDecimal.?, "setint", .{ 0 });
            _ = Inheritance.call(basicDecimal.?, "subtractint", .{ y });
            self.index += 1;
        } else {
            self.index = 0;
            _ = Inheritance.call(self, "processAI", .{ allBinaryLayerManager });
        }
    }
};

