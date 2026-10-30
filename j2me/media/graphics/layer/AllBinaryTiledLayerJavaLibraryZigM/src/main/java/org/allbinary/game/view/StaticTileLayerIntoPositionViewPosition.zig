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
// package org.allbinary.game.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const NullLayer = @import("org/allbinary/layer/NullLayer.zig").NullLayer;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const StaticTileLayerIntoPositionViewPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.view.StaticTileLayerIntoPositionViewPosition";
    base: ViewPosition = undefined,
    var tiledLayer: ?*Layer = undefined;
    pub var layer: ?*AllBinaryLayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        tiledLayer = Inheritance.upcast(?*Layer, NullLayer.getInstance());
        layer = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ViewPosition, "create3", .{ 0, 0, 0 }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.base.getX() - Inheritance.receiverOf(StaticTileLayerIntoPositionViewPosition.tiledLayer.?, "getXP").getXP();
    }
    

    pub fn getY(self: *Self) i32 {
        return self.base.getY() - Inheritance.receiverOf(StaticTileLayerIntoPositionViewPosition.tiledLayer.?, "getYP").getYP();
    }
    

    pub fn getZ(self: *Self) i32 {
        return self.base.getZ() - Inheritance.receiverOf(StaticTileLayerIntoPositionViewPosition.tiledLayer.?, "getZP").getZP();
    }
    

    pub fn setTiledLayer(tiledLayer_: ?*AllBinaryTiledLayer) void {
        StaticTileLayerIntoPositionViewPosition.tiledLayer = Inheritance.upcast(@TypeOf(StaticTileLayerIntoPositionViewPosition.tiledLayer), tiledLayer_);
    }
};

