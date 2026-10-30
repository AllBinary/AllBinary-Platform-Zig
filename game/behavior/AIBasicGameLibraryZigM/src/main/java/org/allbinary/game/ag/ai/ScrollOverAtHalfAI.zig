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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const ScrollOverAtHalfAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.ScrollOverAtHalfAI";
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
        const x: i32 = Inheritance.receiver(ownerLayerInterface.?, "getXP").getXP();
        const y: i32 = Inheritance.receiver(ownerLayerInterface.?, "getYP").getYP();
        const halfWidth: i32 = Inheritance.receiver(ownerLayerInterface.?, "getHalfWidth").getHalfWidth();
        const halfHeight: i32 = Inheritance.receiver(ownerLayerInterface.?, "getHalfHeight").getHalfHeight();
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (x > displayInfo.?.getLastWidth() - halfWidth) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ halfWidth + 1, y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
        }
        if (y > displayInfo.?.getLastHeight() - halfHeight) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ x, halfHeight + 1, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
        }
        if (x < -halfWidth) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ displayInfo.?.getLastWidth() - halfWidth, y, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
        }
        if (y < -halfHeight) {
            _ = Inheritance.call(ownerLayerInterface.?, "setPosition", .{ x, displayInfo.?.getLastHeight() - halfHeight, Inheritance.receiver(ownerLayerInterface.?, "getZP").getZP() });
        }
    }
};

