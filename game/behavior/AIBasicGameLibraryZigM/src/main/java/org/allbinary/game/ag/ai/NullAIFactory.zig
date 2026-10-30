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
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const NullAI = @import("org/allbinary/game/ag/ai/NullAI.zig").NullAI;

pub const NullAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.NullAIFactory";
    // Implements ArtificialIntelligenceInterfaceFactoryInterface
    var NULL_AI: ?*NullAI = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_AI = NullAI.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance3(self: *Self, hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        _ = hashtable;
        _ = ownerLayerInterface;
        _ = gameInput;
        _ = self;
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, NullAIFactory.NULL_AI);
    }
    

    pub fn getInstance() ?*ArtificialIntelligenceInterface {
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, NullAIFactory.NULL_AI);
    }
};

