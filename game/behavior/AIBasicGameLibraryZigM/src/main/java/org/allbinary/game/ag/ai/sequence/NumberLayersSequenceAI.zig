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
// package org.allbinary.game.ag.ai.sequence

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SequenceAI = @import("org/allbinary/game/ag/ai/sequence/SequenceAI.zig").SequenceAI;

pub const NumberLayersSequenceAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.sequence.NumberLayersSequenceAI";
    base: SequenceAI = undefined,
    numberOfLayersLeft: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create4(numberOfEnemiesLeft: i32, artificialIntelligenceInterface: []?*ArtificialIntelligenceInterface, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SequenceAI, "create3", .{ artificialIntelligenceInterface, ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.numberOfLayersLeft = numberOfEnemiesLeft;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (Inheritance.receiver(self, "getIndex").getIndex() == 0) {
            if (Inheritance.receiver(allBinaryLayerManager.?, "getSize").getSize() < self.numberOfLayersLeft) {
                _ = Inheritance.call(self, "setIndex", .{ 1 });
            }
        }
        _ = Inheritance.call(&self.base, "processAI", .{ allBinaryLayerManager });
    }
};

