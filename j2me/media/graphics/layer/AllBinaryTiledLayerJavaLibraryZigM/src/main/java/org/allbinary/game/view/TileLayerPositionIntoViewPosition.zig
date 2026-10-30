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
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;
const NullLayer = @import("org/allbinary/layer/NullLayer.zig").NullLayer;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const TileLayerPositionIntoViewPosition = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.view.TileLayerPositionIntoViewPosition";
    base: ViewPosition = undefined,
    tiledLayer: ?*Layer = null,

    fn initFields(this: *Self) void {
        this.tiledLayer = Inheritance.upcast(?*Layer, NullLayer.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ViewPosition, "create3", .{ 0, 0, 0 }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.base.getX() - self.tiledLayer.?.getXP();
    }
    

    pub fn getY(self: *Self) i32 {
        return self.base.getY() - self.tiledLayer.?.getYP();
    }
    

    pub fn getZ(self: *Self) i32 {
        return self.base.getZ() - self.tiledLayer.?.getZP();
    }
    

    pub fn setTiledLayer(self: *Self, tiledLayer: ?*AllBinaryTiledLayer) void {
        self.tiledLayer = tiledLayer;
    }
};

