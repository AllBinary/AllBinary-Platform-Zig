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
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const ArtificialIntelligenceInterfaceFactoryInterface = @import("org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.zig").ArtificialIntelligenceInterfaceFactoryInterface;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const InputProbability = @import("org/allbinary/game/ag/ai/InputProbability.zig").InputProbability;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicRandomAI = @import("org/allbinary/game/ag/ai/tactical/BasicRandomAI.zig").BasicRandomAI;

pub const BasicRandomAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory";
    // Implements ArtificialIntelligenceInterfaceFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        _ = self;
        const visitor: ?*Visitor = Inheritance.cast(?*Visitor, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, BasicAI.AI_VISITOR) }));
        if (visitor == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Visitor Provided"); break :exception error.Exception; }});
        }
        const inputProbability: ?*InputProbability = Inheritance.cast(?*InputProbability, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, InputProbability.INPUT_PROBABILITY) }));
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(BasicRandomAI, "create4", .{ ownerLayerInterface, gameInput, inputProbability, visitor }));
    }
};

