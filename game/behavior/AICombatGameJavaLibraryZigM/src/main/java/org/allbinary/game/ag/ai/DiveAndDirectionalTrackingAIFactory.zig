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
const BasicRandomAIFactory = @import("org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory.zig").BasicRandomAIFactory;
const ArtificialIntelligenceInterfaceFactoryInterface = @import("org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.zig").ArtificialIntelligenceInterfaceFactoryInterface;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicProbabilityAIDataFactory = @import("org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory.zig").BasicProbabilityAIDataFactory;
const DiveAndDirectionalTrackingAI = @import("org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI.zig").DiveAndDirectionalTrackingAI;
const LastKeyAIVisitorFactory = @import("org/allbinary/game/ag/ai/LastKeyAIVisitorFactory.zig").LastKeyAIVisitorFactory;
const ThrustAIVisitorFactory = @import("org/allbinary/game/ag/ai/ThrustAIVisitorFactory.zig").ThrustAIVisitorFactory;

pub const DiveAndDirectionalTrackingAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAIFactory";
    // Implements ArtificialIntelligenceInterfaceFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        _ = self;
        var visitorCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, BasicAI.AI_VISITOR) }));
        if (visitorCanBeNull == null) {
            visitorCanBeNull = Inheritance.upcast(@TypeOf(visitorCanBeNull), ThrustAIVisitorFactory.getInstance());
        }
        const hashtable2: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, BasicProbabilityAIDataFactory.create().getInstance());
        _ = Inheritance.call(hashtable2.?, "put", .{ BasicAI.AI_VISITOR, LastKeyAIVisitorFactory.getInstance() });
        const artificialIntelligenceInterface: ?*ArtificialIntelligenceInterface = Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.call(BasicRandomAIFactory.create(), "getInstance", .{ hashtable2, ownerLayerInterface, gameInput }));
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(DiveAndDirectionalTrackingAI, "create4", .{ ownerLayerInterface, artificialIntelligenceInterface, gameInput, Inheritance.cast(?*Visitor, visitorCanBeNull) }));
    }
};

