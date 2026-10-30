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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NamedInterface = @import("org/allbinary/layer/NamedInterface.zig").NamedInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const GameInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.GameInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: NamedInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    processInputFn: *const fn (pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager) void,
    initInputProcessorsFn: *const fn (pointer: *anyopaque) void,

    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        return self.processInputFn(self.pointer, layerManager);
    }

    pub fn initInputProcessors(self: *Self) void {
        return self.initInputProcessorsFn(self.pointer);
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
            fn processInput(pointer: *anyopaque, layerManager: ?*AllBinaryLayerManager) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processInput").processInput(layerManager);
            }
            fn initInputProcessors(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "initInputProcessors").initInputProcessors();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = NamedInterface.of(object).?.*, .toStringFn = Methods.toString, .processInputFn = Methods.processInput, .initInputProcessorsFn = Methods.initInputProcessors };
        return this;
    }
};

