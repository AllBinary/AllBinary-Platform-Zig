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
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const PathFindingNodeCostInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfo.zig").PathFindingNodeCostInfo;
const PathFindingNodeCostInfoFactoryBaseInterface = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingNodeCostInfoFactoryBaseInterface.zig").PathFindingNodeCostInfoFactoryBaseInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const PathFindingNodeCostInfoFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    base: PathFindingNodeCostInfoFactoryBaseInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) ?*PathFindingNodeCostInfo,
    getInstanceFn: *const fn (pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingNodeCostInfo,
    getTotalCostFn: *const fn (pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64,

    pub fn getInstance(self: *Self, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) ?*PathFindingNodeCostInfo {
        return self.getInstanceFn(self.pointer, comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
    }

    pub fn getInstance(self: *Self, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingNodeCostInfo {
        return self.getInstanceFn(self.pointer, comingFromGeographicMapCellPosition, geographicMapCellPosition);
    }

    pub fn getTotalCost(self: *Self, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
        return self.getTotalCostFn(self.pointer, comingFromGeographicMapCellPosition, geographicMapCellPosition);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getInstance(pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) ?*PathFindingNodeCostInfo {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PathFindingNodeCostInfo, Inheritance.receiver(implementation, "getInstance").getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd));
            }
            fn getInstance(pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*PathFindingNodeCostInfo {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PathFindingNodeCostInfo, Inheritance.receiver(implementation, "getInstance").getInstance(comingFromGeographicMapCellPosition, geographicMapCellPosition));
            }
            fn getTotalCost(pointer: *anyopaque, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getTotalCost").getTotalCost(comingFromGeographicMapCellPosition, geographicMapCellPosition);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = PathFindingNodeCostInfoFactoryBaseInterface.of(object).?.*, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance, .getInstanceFn = Methods.getInstance, .getTotalCostFn = Methods.getTotalCost };
        return this;
    }
};

