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
const LayerPlacementInterfaceBasicArrayListFactoryInterface = @import("org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface.zig").LayerPlacementInterfaceBasicArrayListFactoryInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, level: i32) ?*LayerPlacementInterfaceBasicArrayListFactoryInterface,
    sizeFn: *const fn (pointer: *anyopaque) i32,

    pub fn getInstance(self: *Self, level: i32) ?*LayerPlacementInterfaceBasicArrayListFactoryInterface {
        return self.getInstanceFn(self.pointer, level);
    }

    pub fn size(self: *Self) i32 {
        return self.sizeFn(self.pointer);
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
            fn getInstance(pointer: *anyopaque, level: i32) ?*LayerPlacementInterfaceBasicArrayListFactoryInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*LayerPlacementInterfaceBasicArrayListFactoryInterface, Inheritance.receiver(implementation, "getInstance").getInstance(level));
            }
            fn size(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "size").size();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance, .sizeFn = Methods.size };
        return this;
    }
};

