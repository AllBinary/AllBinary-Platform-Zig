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
// package org.allbinary.media.graphics.geography.pathfinding

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellHistory = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellHistory.zig").GeographicMapCellHistory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;

// Java interface: an implementation is a pointer and a table of functions
pub const PathGeneratorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    createListFn: *const fn (pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, geographicMapCellHistory: ?*GeographicMapCellHistory, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList,

    pub fn createList(self: *Self, geographicMapInterface: ?*BasicGeographicMap, geographicMapCellHistory: ?*GeographicMapCellHistory, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
        return self.createListFn(self.pointer, geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths);
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
            fn createList(pointer: *anyopaque, geographicMapInterface: ?*BasicGeographicMap, geographicMapCellHistory: ?*GeographicMapCellHistory, pathFindingInfo: ?*PathFindingInfo, totalPaths: i32) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "createList").createList(geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .createListFn = Methods.createList };
        return this;
    }
};

