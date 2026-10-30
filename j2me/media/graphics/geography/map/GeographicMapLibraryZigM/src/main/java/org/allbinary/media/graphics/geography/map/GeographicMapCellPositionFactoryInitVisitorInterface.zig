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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapCellPositionFactoryInitVisitorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    visitFn: *const fn (pointer: *anyopaque, tiledLayer: ?*AllBinaryTiledLayer, cellPosition: ?*GeographicMapCellPosition) void,

    pub fn visit(self: *Self, tiledLayer: ?*AllBinaryTiledLayer, cellPosition: ?*GeographicMapCellPosition) void {
        return self.visitFn(self.pointer, tiledLayer, cellPosition);
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
            fn visit(pointer: *anyopaque, tiledLayer: ?*AllBinaryTiledLayer, cellPosition: ?*GeographicMapCellPosition) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "visit").visit(tiledLayer, cellPosition);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .visitFn = Methods.visit };
        return this;
    }
};

