// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.behavior.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;

// Java interface: an implementation is a pointer and a table of functions
pub const TopViewCharacterInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.behavior.topview.TopViewCharacterInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    terrainMoveFn: *const fn (pointer: *anyopaque, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, x: i32, y: i32) void,
    terrainEventFn: *const fn (pointer: *anyopaque, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void,
    moveFn: *const fn (pointer: *anyopaque) void,
    uppFn: *const fn (pointer: *anyopaque) void,
    leftpFn: *const fn (pointer: *anyopaque) void,
    rightpFn: *const fn (pointer: *anyopaque) void,
    resetFn: *const fn (pointer: *anyopaque) void,

    pub fn terrainMove(self: *Self, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, x: i32, y: i32) void {
        return self.terrainMoveFn(self.pointer, geographicMapInterfaceArray, geographicMapCellTypeArray, x, y);
    }

    pub fn terrainEvent(self: *Self, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        return self.terrainEventFn(self.pointer, x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
    }

    pub fn move(self: *Self) void {
        return self.moveFn(self.pointer);
    }

    pub fn upp(self: *Self) void {
        return self.uppFn(self.pointer);
    }

    pub fn leftp(self: *Self) void {
        return self.leftpFn(self.pointer);
    }

    pub fn rightp(self: *Self) void {
        return self.rightpFn(self.pointer);
    }

    pub fn reset(self: *Self) void {
        return self.resetFn(self.pointer);
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
            fn terrainMove(pointer: *anyopaque, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, x: i32, y: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "terrainMove").terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y);
            }
            fn terrainEvent(pointer: *anyopaque, x: i32, y: i32, geographicMapInterfaceArray: []?*BasicGeographicMap, geographicMapCellTypeArray: []?*GeographicMapCellType, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "terrainEvent").terrainEvent(x, y, geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
            }
            fn move(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "move").move();
            }
            fn upp(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "upp").upp();
            }
            fn leftp(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "leftp").leftp();
            }
            fn rightp(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "rightp").rightp();
            }
            fn reset(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "reset").reset();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .terrainMoveFn = Methods.terrainMove, .terrainEventFn = Methods.terrainEvent, .moveFn = Methods.move, .uppFn = Methods.upp, .leftpFn = Methods.leftp, .rightpFn = Methods.rightp, .resetFn = Methods.reset };
        return this;
    }
};

