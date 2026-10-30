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
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const SpecialGameInputProcessor = @import("org/allbinary/game/layer/special/SpecialGameInputProcessor.zig").SpecialGameInputProcessor;

pub const SpecialRightGameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.SpecialRightGameInputProcessor";
    base: SpecialGameInputProcessor = undefined,
    

    pub fn create1(collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SpecialGameInputProcessor, "create1", .{ collidableDestroyableDamageableLayer }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = allbinaryLayerManager;
        _ = gameKeyEvent;
        _ = Inheritance.receiver(Inheritance.fieldPointer(self, "collidableDestroyableDamageableLayer").*.?, "right").right();
    }
};

