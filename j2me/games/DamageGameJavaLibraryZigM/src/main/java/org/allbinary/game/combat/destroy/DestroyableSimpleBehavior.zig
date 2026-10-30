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
// package org.allbinary.game.combat.destroy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const DestroyableBaseBehavior = @import("org/allbinary/game/combat/destroy/DestroyableBaseBehavior.zig").DestroyableBaseBehavior;
const DestroyedLayerProcessor = @import("org/allbinary/game/combat/destroy/DestroyedLayerProcessor.zig").DestroyedLayerProcessor;

pub const DestroyableSimpleBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.DestroyableSimpleBehavior";
    base: DestroyableBaseBehavior = undefined,
    ownerLayer: ?*CollidableCompositeLayer = null,
    destroyed: bool = false,

    fn initFields(this: *Self) void {
        
        this.destroyed = false;
    }
    

    pub fn create1(ownerLayer: ?*CollidableCompositeLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DestroyableBaseBehavior.create().*;
        this.initFields();
        this.ownerLayer = ownerLayer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isDestroyed(self: *Self) bool {
        return self.destroyed;
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        self.destroyed = destroyed;
        if (self.isDestroyed()) {
            _ = Inheritance.call(DestroyedLayerProcessor.getInstance().?, "add", .{ self.ownerLayer });
        }
    }
};

