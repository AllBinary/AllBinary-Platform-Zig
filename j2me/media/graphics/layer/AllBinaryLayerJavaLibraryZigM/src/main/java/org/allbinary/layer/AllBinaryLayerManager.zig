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
const LayerManagerEvent = @import("org/allbinary/layer/event/LayerManagerEvent.zig").LayerManagerEvent;
const LayerManagerEventHandler = @import("org/allbinary/layer/event/LayerManagerEventHandler.zig").LayerManagerEventHandler;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerManagerNoDebug = @import("org/allbinary/layer/LayerManagerNoDebug.zig").LayerManagerNoDebug;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;

pub const AllBinaryLayerManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.AllBinaryLayerManager";
    base: LayerManager = undefined,
    layerManagerEventHandler: ?*LayerManagerEventHandler = null,
    createLayerManagerEvent: ?*LayerManagerEvent = null,
    deleteLayerManagerEvent: ?*LayerManagerEvent = null,
    basicLayerProcessorArray: []?*LayerProcessor = &.{},

    fn initFields(this: *Self) void {
        this.layerManagerEventHandler = Inheritance.upcast(?*LayerManagerEventHandler, LayerManagerEventHandler.getInstance());
        this.createLayerManagerEvent = Inheritance.callStatic(LayerManagerEvent, "create2", .{ this, this.layerManagerEventHandler.?.CREATE });
        this.deleteLayerManagerEvent = Inheritance.callStatic(LayerManagerEvent, "create2", .{ this, this.layerManagerEventHandler.?.DELETE });
        this.basicLayerProcessorArray = array_N65860: { const array_N65860_array = allocator.alloc(?*LayerProcessor, @intCast(0)) catch unreachable; @memset(array_N65860_array, null); break :array_N65860 array_N65860_array; };
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(LayerManager, "create1", .{ LayerManagerNoDebug.getInstance() }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLayerProcessorArray(self: *Self) []?*LayerProcessor {
        return self.basicLayerProcessorArray;
    }
    

    pub fn setLayerProcessorArray(self: *Self, layerProcessorArray: []?*LayerProcessor) void {
        self.basicLayerProcessorArray = layerProcessorArray;
    }
    

    pub fn log(self: *Self) void {
        const size: i32 = @as(i32, @intCast(self.basicLayerProcessorArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const layerProcessorInterface: ?*LayerProcessor = Inheritance.upcast(?*LayerProcessor, self.basicLayerProcessorArray[@intCast(index)]); _ = layerProcessorInterface;
            }
        }
    }
    

    // throws Exception
    pub fn append(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        if (!Inheritance.call(self, "contains", .{ layerInterface })) {
            _ = Inheritance.call(self, "appendProcessors", .{ layerInterface });
            _ = Inheritance.call(&self.base, "append", .{ layerInterface });
        }
    }
    

    // throws Exception
    pub fn appendAt(self: *Self, layerInterface: ?*AllBinaryLayer, index: i32) void {
        if (!Inheritance.call(self, "contains", .{ layerInterface })) {
            _ = Inheritance.call(self, "appendProcessors", .{ layerInterface });
            _ = Inheritance.call(&self.base, "appendAt", .{ layerInterface, index });
        }
    }
    

    // throws Exception
    pub fn appendProcessors(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        _ = Inheritance.call(self.createLayerManagerEvent.?, "setLayerInterface", .{ layerInterface });
        _ = Inheritance.call(self.layerManagerEventHandler.?, "fireEvent", .{ self.createLayerManagerEvent });
        var layerProcessorInterface: ?*LayerProcessor = null;
        {
            var index: i32 = @as(i32, @intCast(self.basicLayerProcessorArray.len));
            while (value_N66896: { index -= 1; break :value_N66896 index; } >= 0) {
            layerProcessorInterface = Inheritance.upcast(@TypeOf(layerProcessorInterface), self.basicLayerProcessorArray[@intCast(index)]);
            if (Inheritance.call(layerProcessorInterface.?, "isProcessorLayer", .{ layerInterface })) {
                _ = Inheritance.call(layerProcessorInterface.?.getLayerManager().?, "append", .{ layerInterface });
            }
            }
        }
    }
    

    // throws Exception
    pub fn remove(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.deleteLayerManagerEvent.?, "setLayerInterface", .{ layerInterface });
        _ = Inheritance.call(self.layerManagerEventHandler.?, "fireDeleteEvent", .{ self.deleteLayerManagerEvent });
        var layerProcessorInterface: ?*LayerProcessor = null;
        {
            var index: i32 = @as(i32, @intCast(self.basicLayerProcessorArray.len));
            while (value_N67222: { index -= 1; break :value_N67222 index; } >= 0) {
            layerProcessorInterface = Inheritance.upcast(@TypeOf(layerProcessorInterface), self.basicLayerProcessorArray[@intCast(index)]);
            _ = Inheritance.call(layerProcessorInterface.?.getLayerManager().?, "remove", .{ layerInterface });
            }
        }
        _ = Inheritance.call(&self.base, "remove", .{ layerInterface });
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        var layerProcessorInterface: ?*LayerProcessor = null;
        const size: i32 = @as(i32, @intCast(self.basicLayerProcessorArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerProcessorInterface = Inheritance.upcast(@TypeOf(layerProcessorInterface), self.basicLayerProcessorArray[@intCast(index)]);
            _ = Inheritance.call(layerProcessorInterface.?, "process", .{ self });
            }
        }
    }
    

    // throws Exception
    pub fn cleanup(self: *Self) void {
        var layerProcessorInterface: ?*LayerProcessor = null;
        const size: i32 = @as(i32, @intCast(self.basicLayerProcessorArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerProcessorInterface = Inheritance.upcast(@TypeOf(layerProcessorInterface), self.basicLayerProcessorArray[@intCast(index)]);
            _ = Inheritance.receiverOf(layerProcessorInterface.?.getLayerManager().?, "cleanup").cleanup();
            }
        }
        _ = self.base.cleanup();
    }
};

