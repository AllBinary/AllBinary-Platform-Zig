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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const LayerPlacementType = @import("org/allbinary/game/layer/LayerPlacementType.zig").LayerPlacementType;

// Java interface: an implementation is a pointer and a table of functions
pub const LayerPlacementInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.LayerPlacementInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getWidthFn: *const fn (pointer: *anyopaque) i32,
    getHeightFn: *const fn (pointer: *anyopaque) i32,
    getLayerTypeFn: *const fn (pointer: *anyopaque) ?*LayerPlacementType,
    getInstanceFn: *const fn (pointer: *anyopaque) ?*ABHashtable,

    pub fn getWidth(self: *Self) i32 {
        return self.getWidthFn(self.pointer);
    }

    pub fn getHeight(self: *Self) i32 {
        return self.getHeightFn(self.pointer);
    }

    pub fn getLayerType(self: *Self) ?*LayerPlacementType {
        return self.getLayerTypeFn(self.pointer);
    }

    pub fn getInstance(self: *Self) ?*ABHashtable {
        return self.getInstanceFn(self.pointer);
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
            fn getWidth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getWidth").getWidth();
            }
            fn getHeight(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getHeight").getHeight();
            }
            fn getLayerType(pointer: *anyopaque) ?*LayerPlacementType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*LayerPlacementType, Inheritance.receiver(implementation, "getLayerType").getLayerType());
            }
            fn getInstance(pointer: *anyopaque) ?*ABHashtable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "getInstance").getInstance());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getWidthFn = Methods.getWidth, .getHeightFn = Methods.getHeight, .getLayerTypeFn = Methods.getLayerType, .getInstanceFn = Methods.getInstance };
        return this;
    }
};

