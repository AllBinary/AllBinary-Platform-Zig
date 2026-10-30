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
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const ArtificialIntelligenceInterfaceFactoryInterface = @import("org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.zig").ArtificialIntelligenceInterfaceFactoryInterface;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const KeyPressesAI = @import("org/allbinary/game/ag/ai/KeyPressesAI.zig").KeyPressesAI;
const MultiKeyPressesAI = @import("org/allbinary/game/ag/ai/MultiKeyPressesAI.zig").MultiKeyPressesAI;

pub const KeyPressesAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.KeyPressesAIFactory";
    // Implements ArtificialIntelligenceInterfaceFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        _ = self;
        const isSingleKeyProcessing: bool = Inheritance.receiverOf(InputFeatureFactory.getInstance().?, "isSingleKeyProcessing").isSingleKeyProcessing();
        if (isSingleKeyProcessing) {
            return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(KeyPressesAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }));
        } else {
            return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(MultiKeyPressesAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }));
        }
    }
};

