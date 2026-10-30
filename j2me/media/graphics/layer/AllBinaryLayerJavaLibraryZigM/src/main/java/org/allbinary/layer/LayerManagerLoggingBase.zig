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
const LayerManager = @import("org/allbinary/layer/LayerManager.zig").LayerManager;

pub const LayerManagerLoggingBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.layer.LayerManagerLoggingBase";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn append(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        _ = layerInterface;
        _ = self;
    }
    

    pub fn appendAt(self: *Self, layerInterface: ?*AllBinaryLayer, index: i32) void {
        _ = layerInterface;
        _ = index;
        _ = self;
    }
    

    pub fn remove(self: *Self, layerInterface: ?*AllBinaryLayer) void {
        _ = layerInterface;
        _ = self;
    }
    

    pub fn removeResult(self: *Self, layerManager: ?*LayerManager, layerInterface: ?*AllBinaryLayer, result: bool) void {
        _ = layerManager;
        _ = layerInterface;
        _ = result;
        _ = self;
    }
    

    pub fn clear(self: *Self) void {
        _ = self;
    }
};

