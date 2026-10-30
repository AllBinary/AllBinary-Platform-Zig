// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GeographicMapCellPositionTracking = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionTracking.zig").GeographicMapCellPositionTracking;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapCellPositionTrackingCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTrackingCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getGeographicMapCellPositionTrackingFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPositionTracking,

    pub fn getGeographicMapCellPositionTracking(self: *Self) ?*GeographicMapCellPositionTracking {
        return self.getGeographicMapCellPositionTrackingFn(self.pointer);
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
            fn getGeographicMapCellPositionTracking(pointer: *anyopaque) ?*GeographicMapCellPositionTracking {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPositionTracking, Inheritance.receiver(implementation, "getGeographicMapCellPositionTracking").getGeographicMapCellPositionTracking());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getGeographicMapCellPositionTrackingFn = Methods.getGeographicMapCellPositionTracking };
        return this;
    }
};

