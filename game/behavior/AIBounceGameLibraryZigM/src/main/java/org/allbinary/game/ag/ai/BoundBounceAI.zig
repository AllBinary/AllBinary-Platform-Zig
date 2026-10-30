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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BoundsVisitorInterface = @import("org/allbinary/bounds/BoundsVisitorInterface.zig").BoundsVisitorInterface;
const LayerBounds = @import("org/allbinary/bounds/LayerBounds.zig").LayerBounds;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const BoundBounceAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.BoundBounceAI";
    base: BasicAI = undefined,
    currentRelativeAngle: i32 = 0,
    layerBounds: ?*LayerBounds = null,
    boundsVisitorInterface: ?*BoundsVisitorInterface = null,

    fn initFields(this: *Self) void {
        this.currentRelativeAngle = 0;
        
        
    }
    

    pub fn create4(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput, layerBounds: ?*LayerBounds, boundsVisitorInterface: ?*BoundsVisitorInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.layerBounds = layerBounds;
        this.boundsVisitorInterface = boundsVisitorInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const rectange: ?*Rectangle = Inheritance.upcast(?*Rectangle, self.layerBounds.?.getRectangleP());
        _ = Inheritance.call(graphics.?, "drawRect", .{ Inheritance.receiverOf(rectange.?.getPoint().?, "getX").getX(), Inheritance.receiverOf(rectange.?.getPoint().?, "getY").getY(), rectange.?.getWidth(), rectange.?.getHeight() });
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = Inheritance.call(self.layerBounds.?, "visit", .{ self.boundsVisitorInterface });
    }
};

