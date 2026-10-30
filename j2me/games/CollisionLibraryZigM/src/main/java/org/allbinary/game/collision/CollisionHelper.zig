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
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;

pub const CollisionHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollisionHelper";
    sourceLayerInterface: ?*AllBinaryLayer = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(sourceLayerInterface: ?*AllBinaryLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.sourceLayerInterface = sourceLayerInterface;
        return this;
    }
    

    pub fn isCollidable(self: *Self, layerInterface: ?*CollidableCompositeLayer) bool {
        _ = layerInterface;
        _ = self;
        return true;
    }
    

    pub fn getOwnerLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.sourceLayerInterface;
    }
    

    pub fn setOwnerLayerInterface(self: *Self, sourceLayerInterface: ?*AllBinaryLayer) void {
        self.sourceLayerInterface = sourceLayerInterface;
    }
};

