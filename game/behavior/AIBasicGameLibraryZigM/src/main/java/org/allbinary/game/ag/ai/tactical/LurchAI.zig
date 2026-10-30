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
// package org.allbinary.game.ag.ai.tactical

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const LurchAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.tactical.LurchAI";
    base: BasicAI = undefined,
    currentRelativeAngle: i32 = 0,
    currentSpeed: i32 = 0,

    fn initFields(this: *Self) void {
        this.currentRelativeAngle = 0;
        this.currentSpeed = 0;
    }
    

    pub fn create2(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (self.currentSpeed == -1) {
            self.currentSpeed = 5;
        } else {
            self.currentSpeed = -1;
        }
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        var x: i32 = Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP();
        if (Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP() - self.currentSpeed <= 0) {
            _ = self.reverse();
            _ = self.drop();
        }
        if (Inheritance.receiver(ownerLayerInterface.?, "getX2").getX2() + self.currentSpeed > Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastWidth").getLastWidth()) {
            _ = self.reverse();
            _ = self.accelerate();
            _ = self.drop();
        }
        if (self.currentRelativeAngle == 0) {
            x += self.currentSpeed;
        } else if (self.currentRelativeAngle == 180) {
            x -= self.currentSpeed;
        }
        _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ x, Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP(), Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
        if (self.currentRelativeAngle == 0) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM0 });
        } else if (self.currentRelativeAngle == 180) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_POUND });
        }
    }
    

    pub fn reverse(self: *Self) void {
        if (self.currentRelativeAngle == 180) {
            self.currentRelativeAngle = 0;
        } else if (self.currentRelativeAngle == 0) {
            self.currentRelativeAngle = 180;
        }
    }
    

    pub fn accelerate(self: *Self) void {
        if (self.currentSpeed < 20) {
            self.currentSpeed += 1;
        }
    }
    

    pub fn drop(self: *Self) void {
        const ownerLayerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        var y: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP();
        if (Inheritance.receiver(ownerLayerInterface.?, "getY2").getY2() + Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight() > Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "getLastHeight").getLastHeight()) {
            y = 0;
        } else {
            y += Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight() + 1;
        }
        _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP(), y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
    }
};

