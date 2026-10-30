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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const RaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMap.zig").RaceTrackGeographicMap;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const RaceTrackGeographicMapInterfaceFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLevelInstanceFn: *const fn (pointer: *anyopaque, id: ?*Integer) ?*RaceTrackGeographicMap,
    getTrackInstanceFn: *const fn (pointer: *anyopaque, id: ?*Integer) ?*RaceTrackGeographicMap,

    pub fn getLevelInstance(self: *Self, id: ?*Integer) ?*RaceTrackGeographicMap {
        return self.getLevelInstanceFn(self.pointer, id);
    }

    pub fn getTrackInstance(self: *Self, id: ?*Integer) ?*RaceTrackGeographicMap {
        return self.getTrackInstanceFn(self.pointer, id);
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
            fn getLevelInstance(pointer: *anyopaque, id: ?*Integer) ?*RaceTrackGeographicMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RaceTrackGeographicMap, Inheritance.receiver(implementation, "getLevelInstance").getLevelInstance(id));
            }
            fn getTrackInstance(pointer: *anyopaque, id: ?*Integer) ?*RaceTrackGeographicMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RaceTrackGeographicMap, Inheritance.receiver(implementation, "getTrackInstance").getTrackInstance(id));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getLevelInstanceFn = Methods.getLevelInstance, .getTrackInstanceFn = Methods.getTrackInstance };
        return this;
    }
};

