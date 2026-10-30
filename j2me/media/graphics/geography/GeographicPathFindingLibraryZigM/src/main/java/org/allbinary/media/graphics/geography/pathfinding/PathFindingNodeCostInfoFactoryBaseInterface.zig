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
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

// Java interface: an implementation is a pointer and a table of functions
pub const PathFindingNodeCostInfoFactoryBaseInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    createFn: *const fn (pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void,
    getTotalCostFn: *const fn (pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64,

    pub fn create(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void {
        return self.createFn(self.pointer, geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
    }

    pub fn getTotalCost(self: *Self, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
        return self.getTotalCostFn(self.pointer, geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition);
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
            fn create(pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition, costFromStart: i64, costToEnd: i64) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "create").create(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
            }
            fn getTotalCost(pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, comingFromGeographicMapCellPosition: ?*GeographicMapCellPosition, geographicMapCellPosition: ?*GeographicMapCellPosition) i64 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getTotalCost").getTotalCost(geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .createFn = Methods.create, .getTotalCostFn = Methods.getTotalCost };
        return this;
    }
};

