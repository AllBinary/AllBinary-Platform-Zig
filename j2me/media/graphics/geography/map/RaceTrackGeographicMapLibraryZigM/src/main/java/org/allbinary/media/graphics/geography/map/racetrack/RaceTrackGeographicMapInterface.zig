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
const GeographicMapInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapInterface.zig").GeographicMapInterface;
const RaceTrackData = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackData.zig").RaceTrackData;
const RaceTrackInfo = @import("org/allbinary/media/graphics/geography/map/racetrack/RaceTrackInfo.zig").RaceTrackInfo;

// Java interface: an implementation is a pointer and a table of functions
pub const RaceTrackGeographicMapInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface";
    pointer: *anyopaque,
    object: Object,
    base: GeographicMapInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getRaceTrackInfoFn: *const fn (pointer: *anyopaque) ?*RaceTrackInfo,
    setRaceTrackInfoFn: *const fn (pointer: *anyopaque, aRaceTrackInfo: ?*RaceTrackInfo) void,
    getRaceTrackDataFn: *const fn (pointer: *anyopaque) ?*RaceTrackData,
    setRaceTrackDataFn: *const fn (pointer: *anyopaque, raceTrackData: ?*RaceTrackData) void,

    pub fn getRaceTrackInfo(self: *Self) ?*RaceTrackInfo {
        return self.getRaceTrackInfoFn(self.pointer);
    }

    pub fn setRaceTrackInfo(self: *Self, aRaceTrackInfo: ?*RaceTrackInfo) void {
        return self.setRaceTrackInfoFn(self.pointer, aRaceTrackInfo);
    }

    pub fn getRaceTrackData(self: *Self) ?*RaceTrackData {
        return self.getRaceTrackDataFn(self.pointer);
    }

    pub fn setRaceTrackData(self: *Self, raceTrackData: ?*RaceTrackData) void {
        return self.setRaceTrackDataFn(self.pointer, raceTrackData);
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
            fn getRaceTrackInfo(pointer: *anyopaque) ?*RaceTrackInfo {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RaceTrackInfo, Inheritance.receiver(implementation, "getRaceTrackInfo").getRaceTrackInfo());
            }
            fn setRaceTrackInfo(pointer: *anyopaque, aRaceTrackInfo: ?*RaceTrackInfo) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRaceTrackInfo").setRaceTrackInfo(aRaceTrackInfo);
            }
            fn getRaceTrackData(pointer: *anyopaque) ?*RaceTrackData {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RaceTrackData, Inheritance.receiver(implementation, "getRaceTrackData").getRaceTrackData());
            }
            fn setRaceTrackData(pointer: *anyopaque, raceTrackData: ?*RaceTrackData) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRaceTrackData").setRaceTrackData(raceTrackData);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GeographicMapInterface.of(object).?.*, .toStringFn = Methods.toString, .getRaceTrackInfoFn = Methods.getRaceTrackInfo, .setRaceTrackInfoFn = Methods.setRaceTrackInfo, .getRaceTrackDataFn = Methods.getRaceTrackData, .setRaceTrackDataFn = Methods.setRaceTrackData };
        return this;
    }
};

