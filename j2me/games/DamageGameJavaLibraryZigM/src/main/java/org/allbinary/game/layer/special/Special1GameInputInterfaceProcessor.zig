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
const SpecialGameInputInterface = @import("org/allbinary/game/layer/special/SpecialGameInputInterface.zig").SpecialGameInputInterface;
const SpecialGameInputInterfaceProcessor = @import("org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor.zig").SpecialGameInputInterfaceProcessor;

pub const Special1GameInputInterfaceProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.Special1GameInputInterfaceProcessor";
    base: SpecialGameInputInterfaceProcessor = undefined,
    

    pub fn create1(collidableDestroyableDamageableLayer: ?*SpecialGameInputInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SpecialGameInputInterfaceProcessor, "create1", .{ collidableDestroyableDamageableLayer }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processEvent(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "specialGameInputInterface").*.?, "special1", .{ allbinaryLayerManager, gameKeyEvent });
    }
};

