// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapCellPositionAreaInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.GeographicMapCellPositionAreaInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNextSurroundingGeographicMapCellPositionFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPosition,
    getOccupyingGeographicMapCellPositionListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getSurroundingGeographicMapCellPositionListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    updateFn: *const fn (pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap) void,

    pub fn getNextSurroundingGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.getNextSurroundingGeographicMapCellPositionFn(self.pointer);
    }

    pub fn getOccupyingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.getOccupyingGeographicMapCellPositionListFn(self.pointer);
    }

    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.getSurroundingGeographicMapCellPositionListFn(self.pointer);
    }

    pub fn update(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        return self.updateFn(self.pointer, geographicMapInterface);
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
            fn getNextSurroundingGeographicMapCellPosition(pointer: *anyopaque) ?*GeographicMapCellPosition {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(implementation, "getNextSurroundingGeographicMapCellPosition").getNextSurroundingGeographicMapCellPosition());
            }
            fn getOccupyingGeographicMapCellPositionList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getOccupyingGeographicMapCellPositionList").getOccupyingGeographicMapCellPositionList());
            }
            fn getSurroundingGeographicMapCellPositionList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getSurroundingGeographicMapCellPositionList").getSurroundingGeographicMapCellPositionList());
            }
            fn update(pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(geographicMapInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNextSurroundingGeographicMapCellPositionFn = Methods.getNextSurroundingGeographicMapCellPosition, .getOccupyingGeographicMapCellPositionListFn = Methods.getOccupyingGeographicMapCellPositionList, .getSurroundingGeographicMapCellPositionListFn = Methods.getSurroundingGeographicMapCellPositionList, .updateFn = Methods.update };
        return this;
    }
};

