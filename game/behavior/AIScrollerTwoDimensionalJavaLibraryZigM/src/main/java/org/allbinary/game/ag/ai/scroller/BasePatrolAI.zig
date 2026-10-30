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
// package org.allbinary.game.ag.ai.scroller

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const BasicVelocityProperties = @import("org/allbinary/game/physics/velocity/BasicVelocityProperties.zig").BasicVelocityProperties;
const VelocityInterfaceCompositeInterface = @import("org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.zig").VelocityInterfaceCompositeInterface;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasePatrolAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.BasePatrolAI";
    base: BasicAI = undefined,
    maxDistance: ?*Integer = null,
    currentDistance: i32 = 0,
    xTotalDistance: i32 = 0,
    lastKeyDirection: i32 = 0,
    keyDirection: i32 = 0,
    pub var MAX_DISTANCE: ?*Integer = undefined;
    pub var DIRECTION_ARRAY: ?*Integer = undefined;
    pub var FIRING_DISTANCE: ?*Integer = undefined;
    pub var SPEED: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MAX_DISTANCE = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }));
        DIRECTION_ARRAY = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 3 }));
        FIRING_DISTANCE = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 4 }));
        SPEED = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 5 }));
    }

    fn initFields(this: *Self) void {
        
        
        this.xTotalDistance = 0;
        this.lastKeyDirection = Canvas.RIGHT;
        this.keyDirection = Canvas.RIGHT;
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.maxDistance = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ BasePatrolAI.MAX_DISTANCE }));
        this.currentDistance = this.maxDistance.?.intValue();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) void {
        _ = self.updateTotalDistance();
        _ = self.changeDirectionIfReachedPacingAreaMax();
    }
    

    pub fn updateTotalDistance(self: *Self) void {
        const velocityInterfaceCompositeInterface: ?*VelocityInterfaceCompositeInterface = Inheritance.cast(?*VelocityInterfaceCompositeInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        const velocityProperties: ?*BasicVelocityProperties = Inheritance.upcast(?*BasicVelocityProperties, velocityInterfaceCompositeInterface.?.getVelocityProperties());
        self.xTotalDistance += Inheritance.receiverOf(velocityProperties.?.getVelocityXBasicDecimalP().?, "getScaled").getScaled();
    }
    

    pub fn changeDirectionIfReachedPacingAreaMax(self: *Self) void {
        const mathUtil: ?*MathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        const totalDistance: i32 = Inheritance.call(mathUtil.?, "abs", .{ self.xTotalDistance });
        if (totalDistance > self.currentDistance) {
            _ = self.nextDirection();
        }
    }
    

    pub fn nextDirection(self: *Self) void {
        if (self.lastKeyDirection == Canvas.LEFT) {
            self.keyDirection = Canvas.RIGHT;
            self.lastKeyDirection = self.keyDirection;
            self.xTotalDistance = 0;
        } else if (self.lastKeyDirection == Canvas.RIGHT) {
            self.keyDirection = Canvas.LEFT;
            self.lastKeyDirection = self.keyDirection;
            self.xTotalDistance = 0;
        }
    }
    

    pub fn disable(self: *Self) void {
        _ = self;
    }
};

