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
// package org.allbinary.media.graphics.geography.map.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;

// Java interface: an implementation is a pointer and a table of functions
pub const DropCellPositionGeneratorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    updateFn: *const fn (pointer: *anyopaque, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void,
    processTickFn: *const fn (pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager) void,
    isDropAllowedAtFn: *const fn (pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) bool,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn update(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
        return self.updateFn(self.pointer, allBinaryGameLayerManager, geographicMapInterface);
    }

    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        return self.processTickFn(self.pointer, allBinaryLayerManager);
    }

    pub fn isDropAllowedAt(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
        return self.isDropAllowedAtFn(self.pointer, geographicMapCellPosition);
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
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn update(pointer: *anyopaque, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager, geographicMapInterface: ?*BasicGeographicMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "update").update(allBinaryGameLayerManager, geographicMapInterface);
            }
            fn processTick(pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processTick").processTick(allBinaryLayerManager);
            }
            fn isDropAllowedAt(pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDropAllowedAt").isDropAllowedAt(geographicMapCellPosition);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .updateFn = Methods.update, .processTickFn = Methods.processTick, .isDropAllowedAtFn = Methods.isDropAllowedAt };
        return this;
    }
};

