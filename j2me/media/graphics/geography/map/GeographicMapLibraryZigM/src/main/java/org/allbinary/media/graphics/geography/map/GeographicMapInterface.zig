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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const BasicGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory.zig").BasicGeographicMapCellPositionFactory;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCellPositionFactoryInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPositionFactoryInterface.zig").GeographicMapCellPositionFactoryInterface;
const GeographicMapCellType = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellType.zig").GeographicMapCellType;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const GeographicMapInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.GeographicMapInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getIdFn: *const fn (pointer: *anyopaque) ?*Integer,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    resetFn: *const fn (pointer: *anyopaque) void,
    getAllBinaryTiledLayerFn: *const fn (pointer: *anyopaque) ?*AllBinaryTiledLayer,
    getCellPositionsAtFn: *const fn (pointer: *anyopaque, layer: ?*Layer, currentCellPositionArray: [][]?*GeographicMapCellPosition, cellPositionArray: [][]?*GeographicMapCellPosition) bool,
    getCellPositionAtXYFn: *const fn (pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellPosition,
    getCellPositionAtXYNoThrowFn: *const fn (pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellPosition,
    getCellTypeFromMapCellTypeIntFn: *const fn (pointer: *anyopaque, cellTypeId: i32) i32,
    getCellTypeAtXYFn: *const fn (pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellType,
    getCellTypeAtFn: *const fn (pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellType,
    getGeographicMapCellPositionFactoryFn: *const fn (pointer: *anyopaque) ?*BasicGeographicMapCellPositionFactory,
    getGeographicMapCellPositionFactoryInterfaceFn: *const fn (pointer: *anyopaque) ?*GeographicMapCellPositionFactoryInterface,
    getForegroundBasicColorFn: *const fn (pointer: *anyopaque) ?*BasicColor,
    getBackgroundBasicColorFn: *const fn (pointer: *anyopaque) ?*BasicColor,

    pub fn getId(self: *Self) ?*Integer {
        return self.getIdFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn reset(self: *Self) void {
        return self.resetFn(self.pointer);
    }

    pub fn getAllBinaryTiledLayer(self: *Self) ?*AllBinaryTiledLayer {
        return self.getAllBinaryTiledLayerFn(self.pointer);
    }

    pub fn getCellPositionsAt(self: *Self, layer: ?*Layer, currentCellPositionArray: [][]?*GeographicMapCellPosition, cellPositionArray: [][]?*GeographicMapCellPosition) bool {
        return self.getCellPositionsAtFn(self.pointer, layer, currentCellPositionArray, cellPositionArray);
    }

    pub fn getCellPositionAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        return self.getCellPositionAtXYFn(self.pointer, x, y);
    }

    pub fn getCellPositionAtXYNoThrow(self: *Self, x: i32, y: i32) ?*GeographicMapCellPosition {
        return self.getCellPositionAtXYNoThrowFn(self.pointer, x, y);
    }

    pub fn getCellTypeFromMapCellTypeInt(self: *Self, cellTypeId: i32) i32 {
        return self.getCellTypeFromMapCellTypeIntFn(self.pointer, cellTypeId);
    }

    pub fn getCellTypeAtXY(self: *Self, x: i32, y: i32) ?*GeographicMapCellType {
        return self.getCellTypeAtXYFn(self.pointer, x, y);
    }

    pub fn getCellTypeAt(self: *Self, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellType {
        return self.getCellTypeAtFn(self.pointer, geographicMapCellPosition);
    }

    pub fn getGeographicMapCellPositionFactory(self: *Self) ?*BasicGeographicMapCellPositionFactory {
        return self.getGeographicMapCellPositionFactoryFn(self.pointer);
    }

    pub fn getGeographicMapCellPositionFactoryInterface(self: *Self) ?*GeographicMapCellPositionFactoryInterface {
        return self.getGeographicMapCellPositionFactoryInterfaceFn(self.pointer);
    }

    pub fn getForegroundBasicColor(self: *Self) ?*BasicColor {
        return self.getForegroundBasicColorFn(self.pointer);
    }

    pub fn getBackgroundBasicColor(self: *Self) ?*BasicColor {
        return self.getBackgroundBasicColorFn(self.pointer);
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
            fn getId(pointer: *anyopaque) ?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Integer, Inheritance.receiver(implementation, "getId").getId());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn reset(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "reset").reset();
            }
            fn getAllBinaryTiledLayer(pointer: *anyopaque) ?*AllBinaryTiledLayer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(implementation, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
            }
            fn getCellPositionsAt(pointer: *anyopaque, layer: ?*Layer, currentCellPositionArray: [][]?*GeographicMapCellPosition, cellPositionArray: [][]?*GeographicMapCellPosition) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCellPositionsAt").getCellPositionsAt(layer, currentCellPositionArray, cellPositionArray);
            }
            fn getCellPositionAtXY(pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellPosition {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(implementation, "getCellPositionAtXY").getCellPositionAtXY(x, y));
            }
            fn getCellPositionAtXYNoThrow(pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellPosition {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiver(implementation, "getCellPositionAtXYNoThrow").getCellPositionAtXYNoThrow(x, y));
            }
            fn getCellTypeFromMapCellTypeInt(pointer: *anyopaque, cellTypeId: i32) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getCellTypeFromMapCellTypeInt").getCellTypeFromMapCellTypeInt(cellTypeId);
            }
            fn getCellTypeAtXY(pointer: *anyopaque, x: i32, y: i32) ?*GeographicMapCellType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellType, Inheritance.receiver(implementation, "getCellTypeAtXY").getCellTypeAtXY(x, y));
            }
            fn getCellTypeAt(pointer: *anyopaque, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*GeographicMapCellType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellType, Inheritance.receiver(implementation, "getCellTypeAt").getCellTypeAt(geographicMapCellPosition));
            }
            fn getGeographicMapCellPositionFactory(pointer: *anyopaque) ?*BasicGeographicMapCellPositionFactory {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicGeographicMapCellPositionFactory, Inheritance.receiver(implementation, "getGeographicMapCellPositionFactory").getGeographicMapCellPositionFactory());
            }
            fn getGeographicMapCellPositionFactoryInterface(pointer: *anyopaque) ?*GeographicMapCellPositionFactoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GeographicMapCellPositionFactoryInterface, Inheritance.receiver(implementation, "getGeographicMapCellPositionFactoryInterface").getGeographicMapCellPositionFactoryInterface());
            }
            fn getForegroundBasicColor(pointer: *anyopaque) ?*BasicColor {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicColor, Inheritance.receiver(implementation, "getForegroundBasicColor").getForegroundBasicColor());
            }
            fn getBackgroundBasicColor(pointer: *anyopaque) ?*BasicColor {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicColor, Inheritance.receiver(implementation, "getBackgroundBasicColor").getBackgroundBasicColor());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getIdFn = Methods.getId, .getNameFn = Methods.getName, .resetFn = Methods.reset, .getAllBinaryTiledLayerFn = Methods.getAllBinaryTiledLayer, .getCellPositionsAtFn = Methods.getCellPositionsAt, .getCellPositionAtXYFn = Methods.getCellPositionAtXY, .getCellPositionAtXYNoThrowFn = Methods.getCellPositionAtXYNoThrow, .getCellTypeFromMapCellTypeIntFn = Methods.getCellTypeFromMapCellTypeInt, .getCellTypeAtXYFn = Methods.getCellTypeAtXY, .getCellTypeAtFn = Methods.getCellTypeAt, .getGeographicMapCellPositionFactoryFn = Methods.getGeographicMapCellPositionFactory, .getGeographicMapCellPositionFactoryInterfaceFn = Methods.getGeographicMapCellPositionFactoryInterface, .getForegroundBasicColorFn = Methods.getForegroundBasicColor, .getBackgroundBasicColorFn = Methods.getBackgroundBasicColor };
        return this;
    }
};

