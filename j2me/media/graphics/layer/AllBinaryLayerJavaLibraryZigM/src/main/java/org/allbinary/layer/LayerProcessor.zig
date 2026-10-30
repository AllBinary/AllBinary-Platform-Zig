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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;
const LayerProcessorInterface = @import("org/allbinary/layer/LayerProcessorInterface.zig").LayerProcessorInterface;

pub const LayerProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerProcessor";
    pub const java_interfaces = .{ LayerProcessorInterface };
    commonStrings: ?*CommonStrings = null,
    layerManager: ?*LayerManager = null,
    // Implements LayerProcessorInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(layerManager: ?*LayerManager) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.layerManager = layerManager;
        return this;
    }
    

    // throws Exception
    pub fn processAt(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = allBinaryLayerManager;
        _ = layerInterface;
        _ = index;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn isProcessorLayer(self: *Self, layerInterface: ?*AllBinaryLayer) bool {
        _ = layerInterface;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getLayerManager(self: *Self) ?*LayerManager {
        return self.layerManager;
    }
    

    // throws Exception
    pub fn process(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const layerManager: ?*LayerManager = Inheritance.upcast(?*LayerManager, self.getLayerManager());
        const size: i32 = layerManager.?.getSize();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self, "processAt", .{ allBinaryLayerManager, Inheritance.cast(?*AllBinaryLayer, Inheritance.call(layerManager.?, "getLayerAt", .{ index })), index });
            }
        }
    }
};

