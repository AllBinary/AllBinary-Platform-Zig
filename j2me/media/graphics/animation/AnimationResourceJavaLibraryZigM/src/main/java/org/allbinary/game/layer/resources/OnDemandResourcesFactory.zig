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
// package org.allbinary.game.layer.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OnDemandResources = @import("org/allbinary/game/layer/resources/OnDemandResources.zig").OnDemandResources;

pub const OnDemandResourcesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.resources.OnDemandResourcesFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn size(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn remove(self: *Self, layerId: i32) ?*OnDemandResources {
        _ = layerId;
        _ = self;
        return Inheritance.upcast(?*OnDemandResources, OnDemandResources.NULL_ON_DEMAND_RESOURCES);
    }
};

