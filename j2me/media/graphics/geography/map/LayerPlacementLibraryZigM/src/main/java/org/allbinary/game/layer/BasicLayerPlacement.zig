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
const LayerPlacementType = @import("org/allbinary/game/layer/LayerPlacementType.zig").LayerPlacementType;

pub const BasicLayerPlacement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.BasicLayerPlacement";
    layerType: ?*LayerPlacementType = null,
    width: i32 = 0,
    height: i32 = 0,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(layerType: ?*LayerPlacementType, width: i32, height: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.layerType = layerType;
        this.width = width;
        this.height = height;
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn getLayerType(self: *Self) ?*LayerPlacementType {
        return self.layerType;
    }
    

    pub fn setLayerType(self: *Self, layerType: ?*LayerPlacementType) void {
        self.layerType = layerType;
    }
};

