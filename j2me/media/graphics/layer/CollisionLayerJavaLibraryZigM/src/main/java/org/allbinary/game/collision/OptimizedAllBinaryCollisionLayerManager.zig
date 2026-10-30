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
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerManagerNoDebug = @import("org/allbinary/layer/LayerManagerNoDebug.zig").LayerManagerNoDebug;

pub const OptimizedAllBinaryCollisionLayerManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.OptimizedAllBinaryCollisionLayerManager";
    base: LayerManager = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerManager, "create1", .{ LayerManagerNoDebug.getInstance() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};

