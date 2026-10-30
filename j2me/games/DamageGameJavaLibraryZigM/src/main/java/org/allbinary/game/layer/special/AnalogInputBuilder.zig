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
// package org.allbinary.game.layer.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const Special1GameInputProcessor = @import("org/allbinary/game/layer/special/Special1GameInputProcessor.zig").Special1GameInputProcessor;
const Special3GameInputProcessor = @import("org/allbinary/game/layer/special/Special3GameInputProcessor.zig").Special3GameInputProcessor;
const SpecialAnalogDownGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor.zig").SpecialAnalogDownGameInputProcessor;
const SpecialAnalogLeftGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor.zig").SpecialAnalogLeftGameInputProcessor;
const SpecialAnalogLeftTriggerGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor.zig").SpecialAnalogLeftTriggerGameInputProcessor;
const SpecialAnalogRightGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor.zig").SpecialAnalogRightGameInputProcessor;
const SpecialAnalogRightTriggerGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor.zig").SpecialAnalogRightTriggerGameInputProcessor;
const SpecialAnalogUpGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor.zig").SpecialAnalogUpGameInputProcessor;
const SpecialDownGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialDownGameInputProcessor.zig").SpecialDownGameInputProcessor;
const SpecialLeftGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialLeftGameInputProcessor.zig").SpecialLeftGameInputProcessor;
const SpecialRightGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialRightGameInputProcessor.zig").SpecialRightGameInputProcessor;
const SpecialUpGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialUpGameInputProcessor.zig").SpecialUpGameInputProcessor;

pub const AnalogInputBuilder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.AnalogInputBuilder";
    var instance: ?*AnalogInputBuilder = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnalogInputBuilder.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AnalogInputBuilder {
        return Inheritance.upcast(?*AnalogInputBuilder, AnalogInputBuilder.instance);
    }
    

    pub fn disable(self: *Self, inputProcessorArray: []?*GameInputProcessor, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer) void {
        _ = self;
        inputProcessorArray[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.UP)]), Inheritance.callStatic(SpecialUpGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.DOWN)]), Inheritance.callStatic(SpecialDownGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.RIGHT)]), Inheritance.callStatic(SpecialRightGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.LEFT)]), Inheritance.callStatic(SpecialLeftGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.KEY_NUM0)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.KEY_NUM0)]), Inheritance.callStatic(Special1GameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.KEY_NUM5)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.KEY_NUM5)]), Inheritance.callStatic(Special3GameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
    }
    

    pub fn enable(self: *Self, inputProcessorArray: []?*GameInputProcessor, collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer) void {
        _ = self;
        inputProcessorArray[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.UP)]), Inheritance.callStatic(SpecialAnalogUpGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.DOWN)]), Inheritance.callStatic(SpecialAnalogDownGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.RIGHT)]), Inheritance.callStatic(SpecialAnalogRightGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.LEFT)]), Inheritance.callStatic(SpecialAnalogLeftGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.KEY_NUM0)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.KEY_NUM0)]), Inheritance.callStatic(SpecialAnalogLeftTriggerGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
        inputProcessorArray[@intCast(Canvas.KEY_NUM5)] = Inheritance.upcast(@TypeOf(inputProcessorArray[@intCast(Canvas.KEY_NUM5)]), Inheritance.callStatic(SpecialAnalogRightTriggerGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }));
    }
};

