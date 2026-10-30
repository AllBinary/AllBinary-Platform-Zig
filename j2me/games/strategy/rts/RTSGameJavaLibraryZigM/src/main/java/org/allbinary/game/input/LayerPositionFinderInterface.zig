// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

// Java interface: an implementation is a pointer and a table of functions
pub const LayerPositionFinderInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.LayerPositionFinderInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLayerInterfaceFn: *const fn (pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*AllBinaryLayer,

    pub fn getLayerInterface(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*AllBinaryLayer {
        return self.getLayerInterfaceFn(self.pointer, geographicMapCellPosition);
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
            fn getLayerInterface(pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*AllBinaryLayer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(implementation, "getLayerInterface").getLayerInterface(geographicMapCellPosition));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getLayerInterfaceFn = Methods.getLayerInterface };
        return this;
    }
};

