// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
// package org.allbinary.game.layer.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const ABCustomImageItem = @import("org/allbinary/graphics/form/item/ABCustomImageItem.zig").ABCustomImageItem;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;

pub const LayerInterfaceFactoryImageItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem";
    base: ABCustomImageItem = undefined,
    animationArray: []?*Animation = &.{},
    layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create7(label: ?*String, img: ?*Image, layout: i32, altText: ?*String, basicColor: ?*BasicColor, animationArray: []?*Animation, layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomImageItem, "create6", .{ label, img, layout, altText, basicColor, 0 }).*;
        this.initFields();
        this.animationArray = animationArray;
        this.layerInterfaceFactoryInterface = layerInterfaceFactoryInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLayerInterfaceFactoryInterface(self: *Self) ?*LayerInterfaceFactoryInterface {
        return self.layerInterfaceFactoryInterface;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x, y });
        {
            var index: i32 = @as(i32, @intCast(self.animationArray.len));
            while (value_N66276: { index -= 1; break :value_N66276 index; } >= 0) {
            _ = Inheritance.call(self.animationArray[@intCast(index)].?, "paintXY", .{ graphics, x, y });
            }
        }
    }
};

