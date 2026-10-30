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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Integer = @import("java/lang/Integer.zig").Integer;

pub const PathFindingNodeCostInfoData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData";
    MAX_TOTAL_COST: i32 = 0,
    MAX_NODE_COST: i32 = 0,
    var instance: ?*PathFindingNodeCostInfoData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PathFindingNodeCostInfoData.create();
    }

    fn initFields(this: *Self) void {
        this.MAX_TOTAL_COST = @as(i32, std.math.maxInt(i32));
        this.MAX_NODE_COST = @divTrunc(@as(i32, std.math.maxInt(i32)), 10000);
    }
    

    pub fn getInstance() ?*PathFindingNodeCostInfoData {
        return Inheritance.upcast(?*PathFindingNodeCostInfoData, PathFindingNodeCostInfoData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

