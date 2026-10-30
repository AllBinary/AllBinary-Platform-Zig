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
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    geographicMapCellTypeArrayFn: *const fn (pointer: *anyopaque) []?*GeographicMapCellType,
    getGeographicMapInterfaceFn: *const fn (pointer: *anyopaque) []?*BasicGeographicMap,
    setGeographicMapInterfaceFn: *const fn (pointer: *anyopaque, geographicMapInterface: []?*BasicGeographicMap) void,

    pub fn geographicMapCellTypeArray(self: *Self) []?*GeographicMapCellType {
        return self.geographicMapCellTypeArrayFn(self.pointer);
    }

    pub fn getGeographicMapInterface(self: *Self) []?*BasicGeographicMap {
        return self.getGeographicMapInterfaceFn(self.pointer);
    }

    pub fn setGeographicMapInterface(self: *Self, geographicMapInterface: []?*BasicGeographicMap) void {
        return self.setGeographicMapInterfaceFn(self.pointer, geographicMapInterface);
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
            fn geographicMapCellTypeArray(pointer: *anyopaque) []?*GeographicMapCellType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "geographicMapCellTypeArray").geographicMapCellTypeArray();
            }
            fn getGeographicMapInterface(pointer: *anyopaque) []?*BasicGeographicMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getGeographicMapInterface").getGeographicMapInterface();
            }
            fn setGeographicMapInterface(pointer: *anyopaque, geographicMapInterface: []?*BasicGeographicMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setGeographicMapInterface").setGeographicMapInterface(geographicMapInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .geographicMapCellTypeArrayFn = Methods.geographicMapCellTypeArray, .getGeographicMapInterfaceFn = Methods.getGeographicMapInterface, .setGeographicMapInterfaceFn = Methods.setGeographicMapInterface };
        return this;
    }
};

