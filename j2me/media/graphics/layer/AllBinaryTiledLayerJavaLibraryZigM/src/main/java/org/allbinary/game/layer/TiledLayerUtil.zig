// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;

pub const TiledLayerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.TiledLayerUtil";
    var instance: ?*TiledLayerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TiledLayerUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*TiledLayerUtil {
        return Inheritance.upcast(?*TiledLayerUtil, TiledLayerUtil.instance);
    }
    

    pub fn keepOnBorderdMapX(self: *Self, terrainTiledLayer: ?*AllBinaryTiledLayer, x: i32, width: i32, mapBorderBufferWidth: i32) i32 {
        _ = self;
        var newX: i32 = x;
        const maxRight: i32 = Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() - width - mapBorderBufferWidth;
        if (x + width > maxRight) {
            newX = maxRight;
        }
        if (x < mapBorderBufferWidth) {
            newX = mapBorderBufferWidth;
        }
        return newX;
    }
    

    pub fn keepOnBorderdMapY(self: *Self, terrainTiledLayer: ?*AllBinaryTiledLayer, y: i32, height: i32, mapBorderBufferHeight: i32) i32 {
        _ = self;
        var newY: i32 = y;
        const maxBottom: i32 = Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() - height - mapBorderBufferHeight;
        if (y + height > maxBottom) {
            newY = maxBottom;
        }
        if (y < mapBorderBufferHeight) {
            newY = mapBorderBufferHeight;
        }
        return newY;
    }
    

    pub fn keepOnMapX(self: *Self, terrainTiledLayer: ?*AllBinaryTiledLayer, x: i32, width: i32) i32 {
        _ = self;
        var newX: i32 = x;
        const maxRight: i32 = Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() - width;
        if (x >= maxRight) {
            newX = maxRight;
        }
        if (x < 0) {
            newX = 0;
        }
        return newX;
    }
    

    pub fn keepOnMapY(self: *Self, terrainTiledLayer: ?*AllBinaryTiledLayer, y: i32, height: i32) i32 {
        _ = self;
        var newY: i32 = y;
        const maxBottom: i32 = Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() - height;
        if (y >= maxBottom) {
            newY = maxBottom;
        }
        if (y < 0) {
            newY = 0;
        }
        return newY;
    }
};

