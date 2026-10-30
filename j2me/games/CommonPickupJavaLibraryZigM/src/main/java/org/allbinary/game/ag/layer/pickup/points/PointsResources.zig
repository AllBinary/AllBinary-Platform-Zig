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
// package org.allbinary.game.ag.layer.pickup.points

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PointsResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.points.PointsResources";
    RESOURCE: ?*String = null,
    RESOURCE_2: ?*String = null,
    RESOURCE_3: ?*String = null,
    RESOURCE_4: ?*String = null,
    var SINGLETON: ?*PointsResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = PointsResources.create();
    }

    fn initFields(this: *Self) void {
        this.RESOURCE = String.literal("points_drop_20_by_20.png");
        this.RESOURCE_2 = String.literal("points_2_drop_20_by_20.png");
        this.RESOURCE_3 = String.literal("points_3_drop_20_by_20.png");
        this.RESOURCE_4 = String.literal("points_4_drop_20_by_20.png");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PointsResources {
        return Inheritance.upcast(?*PointsResources, PointsResources.SINGLETON);
    }
};

