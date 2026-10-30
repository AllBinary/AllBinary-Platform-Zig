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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const DisplayableInterface = @import("org/allbinary/graphics/displayable/DisplayableInterface.zig").DisplayableInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AllBinaryGameCanvasInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface";
    pointer: *anyopaque,
    object: Object,
    base: DisplayableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLayerManagerFn: *const fn (pointer: *anyopaque) ?*AllBinaryGameLayerManager,

    pub fn getLayerManager(self: *Self) ?*AllBinaryGameLayerManager {
        return self.getLayerManagerFn(self.pointer);
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
            fn getLayerManager(pointer: *anyopaque) ?*AllBinaryGameLayerManager {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryGameLayerManager, Inheritance.receiver(implementation, "getLayerManager").getLayerManager());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = DisplayableInterface.of(object).?.*, .toStringFn = Methods.toString, .getLayerManagerFn = Methods.getLayerManager };
        return this;
    }
};

