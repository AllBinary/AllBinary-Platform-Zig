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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Screen = @import("javax/microedition/lcdui/Screen.zig").Screen;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const ABCustomItemInterface = @import("org/allbinary/graphics/form/item/ABCustomItemInterface.zig").ABCustomItemInterface;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;

pub const TileLayerItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.TileLayerItem";
    base: ABCustomItem = undefined,
    tiledLayer: ?*AllBinaryTiledLayer = null,
    // Implements ABCustomItemInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create6(label: ?*String, tiledLayer: ?*AllBinaryTiledLayer, layout: i32, altText: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = layout;
        _ = altText;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomItem, "create3", .{ label, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.tiledLayer = tiledLayer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setOwner(self: *Self, owner: ?*Screen) void {
        _ = owner;
        _ = self;
    }
    

    pub fn getMinimumWidth(self: *Self) i32 {
        return Inheritance.receiver(self.tiledLayer.?, "getWidth").getWidth();
    }
    

    pub fn getMinimumHeight(self: *Self) i32 {
        return Inheritance.receiver(self.tiledLayer.?, "getHeight").getHeight();
    }
    

    pub fn getMinContentHeight(self: *Self) i32 {
        return Inheritance.receiver(self.tiledLayer.?, "getHeight").getHeight();
    }
    

    pub fn getMinContentWidth(self: *Self) i32 {
        return Inheritance.receiver(self.tiledLayer.?, "getWidth").getWidth();
    }
    

    pub fn getPrefContentHeight(self: *Self, width: i32) i32 {
        _ = width;
        return Inheritance.receiver(self.tiledLayer.?, "getHeight").getHeight();
    }
    

    pub fn getPrefContentWidth(self: *Self, height: i32) i32 {
        _ = height;
        return Inheritance.receiver(self.tiledLayer.?, "getWidth").getWidth();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.tiledLayer.?, "setPosition", .{ x, y, Inheritance.receiver(self.tiledLayer.?, "getZP").getZP() });
        _ = Inheritance.call(self.tiledLayer.?, "paint", .{ graphics });
    }
    

    pub fn paintUnselected(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = self;
    }
};

