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
const TopULayerBounds = @import("org/allbinary/bounds/TopULayerBounds.zig").TopULayerBounds;
const ArtificialIntelligenceInterfaceFactoryInterface = @import("org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.zig").ArtificialIntelligenceInterfaceFactoryInterface;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const VelocityInterface = @import("org/allbinary/game/physics/velocity/VelocityInterface.zig").VelocityInterface;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BoundBounceAI = @import("org/allbinary/game/ag/ai/BoundBounceAI.zig").BoundBounceAI;
const ReverseVelocityBoundsVisitor = @import("org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor.zig").ReverseVelocityBoundsVisitor;

pub const TopUBoundBounceAIFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.TopUBoundBounceAIFactory";
    // Implements ArtificialIntelligenceInterfaceFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) ?*ArtificialIntelligenceInterface {
        _ = hashtable;
        _ = self;
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, ownerLayerInterface);
        const velocityInterface: ?*VelocityInterface = Inheritance.cast(?*VelocityInterface, velocityInterfaceCompositeInterface.?.getVelocityProperties());
        const maxDistancePerTick: i32 = (Inheritance.receiver(velocityInterface.?, "getMaxForwardVelocity").getMaxForwardVelocity() >> @intCast(Inheritance.receiverOf(Inheritance.receiver(velocityInterface.?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getScaledFactor").getScaledFactor()));
        const halfWidth: i32 = Inheritance.receiver(ownerLayerInterface.?, "getWidth").getWidth() * 2 + maxDistancePerTick + 1;
        const halfHeight: i32 = Inheritance.receiver(ownerLayerInterface.?, "getHeight").getHeight() * 2 + maxDistancePerTick + 1;
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ halfWidth, halfHeight + 60 }));
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const rectangle: ?*Rectangle = Inheritance.callStatic(Rectangle, "create3", .{ point, (displayInfo.?.getLastWidth() - halfWidth - point.?.getX()), (displayInfo.?.getLastHeight() - halfHeight - point.?.getY()) });
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.callStatic(BoundBounceAI, "create4", .{ ownerLayerInterface, gameInput, Inheritance.callStatic(TopULayerBounds, "create1", .{ rectangle }), Inheritance.callStatic(ReverseVelocityBoundsVisitor, "create1", .{ ownerLayerInterface }) }));
    }
};

