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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const GeographicPathFinderBase = @import("org/allbinary/media/graphics/geography/pathfinding/GeographicPathFinderBase.zig").GeographicPathFinderBase;

// Java interface: an implementation is a pointer and a table of functions
pub const PathFindingInfoInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getStartPathFindingNodeListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getEndPathFindingNodeListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getPathFinderFn: *const fn (pointer: *anyopaque) ?*GeographicPathFinderBase,

    pub fn getStartPathFindingNodeList(self: *Self) ?*BasicArrayList {
        return self.getStartPathFindingNodeListFn(self.pointer);
    }

    pub fn getEndPathFindingNodeList(self: *Self) ?*BasicArrayList {
        return self.getEndPathFindingNodeListFn(self.pointer);
    }

    pub fn getPathFinder(self: *Self) ?*GeographicPathFinderBase {
        return self.getPathFinderFn(self.pointer);
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
            fn getStartPathFindingNodeList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getStartPathFindingNodeList").getStartPathFindingNodeList());
            }
            fn getEndPathFindingNodeList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getEndPathFindingNodeList").getEndPathFindingNodeList());
            }
            fn getPathFinder(pointer: *anyopaque) ?*GeographicPathFinderBase {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicPathFinderBase, Inheritance.receiver(implementation, "getPathFinder").getPathFinder());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getStartPathFindingNodeListFn = Methods.getStartPathFindingNodeList, .getEndPathFindingNodeListFn = Methods.getEndPathFindingNodeList, .getPathFinderFn = Methods.getPathFinder };
        return this;
    }
};

