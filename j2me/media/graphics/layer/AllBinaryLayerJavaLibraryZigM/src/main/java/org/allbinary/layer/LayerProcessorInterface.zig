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
// package org.allbinary.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicLayerProcessorInterface = @import("org/allbinary/layer/BasicLayerProcessorInterface.zig").BasicLayerProcessorInterface;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;

// Java interface: an implementation is a pointer and a table of functions
pub const LayerProcessorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerProcessorInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicLayerProcessorInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getLayerManagerFn: *const fn (pointer: *anyopaque) ?*LayerManager,
    processAtFn: *const fn (pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void,
    isProcessorLayerFn: *const fn (pointer: *anyopaque, layerInterface: ?*AllBinaryLayer) bool,

    pub fn getLayerManager(self: *Self) ?*LayerManager {
        return self.getLayerManagerFn(self.pointer);
    }

    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
        return self.processAtFn(self.pointer, allBinaryLayerManager, layerInterface, index);
    }

    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        return self.isProcessorLayerFn(self.pointer, layerInterface);
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
            fn getLayerManager(pointer: *anyopaque) ?*LayerManager {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*LayerManager, Inheritance.receiver(implementation, "getLayerManager").getLayerManager());
            }
            fn processAt(pointer: *anyopaque, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processAt").processAt(allBinaryLayerManager, layerInterface, index);
            }
            fn isProcessorLayer(pointer: *anyopaque, layerInterface: ?*AllBinaryLayer) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isProcessorLayer").isProcessorLayer(layerInterface);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicLayerProcessorInterface.of(object).?.*, .toStringFn = Methods.toString, .getLayerManagerFn = Methods.getLayerManager, .processAtFn = Methods.processAt, .isProcessorLayerFn = Methods.isProcessorLayer };
        return this;
    }
};

