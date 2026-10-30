// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

// Java interface: an implementation is a pointer and a table of functions
pub const AllBinaryTiledLayerFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer,
    getMiniInstanceFn: *const fn (pointer: *anyopaque, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer,

    pub fn getInstance(self: *Self, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
        return self.getInstanceFn(self.pointer, raceTrackInfo, raceTrackData);
    }

    pub fn getMiniInstance(self: *Self, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
        return self.getMiniInstanceFn(self.pointer, raceTrackData);
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
            fn getInstance(pointer: *anyopaque, raceTrackInfo: ?*RaceTrackInfo, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(implementation, "getInstance").getInstance(raceTrackInfo, raceTrackData));
            }
            fn getMiniInstance(pointer: *anyopaque, raceTrackData: ?*RaceTrackData) ?*AllBinaryTiledLayer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(implementation, "getMiniInstance").getMiniInstance(raceTrackData));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance, .getMiniInstanceFn = Methods.getMiniInstance };
        return this;
    }
};

