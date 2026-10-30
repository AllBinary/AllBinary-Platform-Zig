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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const PathFindingNode = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNode.zig").PathFindingNode;
const PathFindingNodeCostInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo.zig").PathFindingNodeCostInfo;

pub const PathFindingNodeCost = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost";
    base: PathFindingNode = undefined,
    commonSeps: ?*CommonSeps = null,
    pathFindingNodeCostInfoP: ?*PathFindingNodeCostInfo = null,
    // Implements Comparable
    pub var NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY: [][]?*PathFindingNodeCost = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY = array_N65773: { const array_N65773_array = allocator.alloc([]?*PathFindingNodeCost, @intCast(0)) catch unreachable; for (array_N65773_array) |*array_N65773_row| { array_N65773_row.* = allocator.alloc(?*PathFindingNodeCost, @intCast(0)) catch unreachable; @memset(array_N65773_row.*, null); } break :array_N65773 array_N65773_array; };
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        
    }
    

    pub fn create3(parent: ?Object, geographicMapCellPosition: ?*GeographicMapCellPosition, pathFindingNodeCostInfo: ?*PathFindingNodeCostInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PathFindingNode, "create2", .{ parent, geographicMapCellPosition }).*;
        this.initFields();
        this.pathFindingNodeCostInfoP = pathFindingNodeCostInfo;
        if (Inheritance.fieldPointer(this, "geographicMapCellPosition").* == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No GeographicMapCellPosition"); break :exception error.Exception; }});
        }
        if (this.getPathFindingNodeCostInfo() == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No PathFindingNodeCostInfo"); break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPathFindingNodeCostInfo(self: *Self) ?*PathFindingNodeCostInfo {
        return self.pathFindingNodeCostInfoP;
    }
    

    pub fn setPathFindingNodeCostInfo(self: *Self, pathFindingNodeCostInfo: ?*PathFindingNodeCostInfo) void {
        self.pathFindingNodeCostInfoP = pathFindingNodeCostInfo;
    }
    

    pub fn compareTo(self: *Self, pathFindingNodeCost: ?*PathFindingNodeCost) i32 {
        return Inheritance.call(self.pathFindingNodeCostInfoP.?, "compareTo", .{ pathFindingNodeCost.?.pathFindingNodeCostInfoP });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.COLON_SEP });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getPathFindingNodeCostInfo())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Path: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(Inheritance.fieldPointer(self, "geographicMapCellPosition").*)) });
        var pathFindingNode: ?*PathFindingNode = Inheritance.cast(?*PathFindingNode, Inheritance.fieldPointer(self, "parent").*);
        while (pathFindingNode != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(pathFindingNode.?.geographicMapCellPosition)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
            pathFindingNode = Inheritance.cast(?*PathFindingNode, pathFindingNode.?.parent);
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

