//
// AllBinary Open License Version 1
// Copyright (c) 2006 AllBinary
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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const PathFindingNodeCostInfoData = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoData.zig").PathFindingNodeCostInfoData;
const Long = @import("java/lang/Long.zig").Long;

pub const PathFindingNodeCostInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo";
    pathFindingNodeCostInfoData: ?*PathFindingNodeCostInfoData = null,
    costFromStartP: i64 = 0,
    costToEndP: i64 = 0,
    totalCostP: i64 = 0,
    // Implements Comparable

    fn initFields(this: *Self) void {
        this.pathFindingNodeCostInfoData = Inheritance.upcast(?*PathFindingNodeCostInfoData, PathFindingNodeCostInfoData.getInstance());
        
        
        this.totalCostP = 0;
    }
    

    pub fn create2(costFromStart: i64, costToGoal: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.costFromStartP = costFromStart;
        this.costToEndP = costToGoal;
        _ = this.setCalculatedTotalCost();
        return this;
    }
    

    pub fn setCostToEnd(self: *Self, costToEnd: i64) void {
        self.costToEndP = costToEnd;
    }
    

    pub fn setTotalCost(self: *Self, totalCost: i64) void {
        self.totalCostP = totalCost;
    }
    

    // throws Exception
    pub fn setCalculatedTotalCost(self: *Self) void {
        self.totalCostP = self.costFromStartP + self.costToEndP;
        if (self.totalCostP > self.pathFindingNodeCostInfoData.?.MAX_NODE_COST) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Max Cost Exceeded"); break :exception error.Exception; }});
        }
    }
    

    pub fn setCostFromStart(self: *Self, cost: i64) void {
        self.costFromStartP = cost;
    }
    

    pub fn addCostFromStart(self: *Self, cost: i64) void {
        self.costFromStartP += cost;
    }
    

    pub fn compareTo(self: *Self, pathFindingNodeCostInfo: ?*PathFindingNodeCostInfo) i32 {
        return Inheritance.call(java.lang.?.Long.?, "compare", .{ self.totalCostP, pathFindingNodeCostInfo.?.totalCostP });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.COLON_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("CostFromStart: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.costFromStartP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" CostToEnd: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.costToEndP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" TotalCost: ") });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ self.totalCostP });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

