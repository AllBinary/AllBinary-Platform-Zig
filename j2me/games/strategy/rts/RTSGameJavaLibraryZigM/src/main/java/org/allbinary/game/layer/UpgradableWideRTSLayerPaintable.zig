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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerCompositePaintable = @import("org/allbinary/game/layer/RTSLayerCompositePaintable.zig").RTSLayerCompositePaintable;
const UpgradableRTSLayerHudPaintable = @import("org/allbinary/game/layer/UpgradableRTSLayerHudPaintable.zig").UpgradableRTSLayerHudPaintable;

pub const UpgradableWideRTSLayerPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.UpgradableWideRTSLayerPaintable";
    base: RTSLayerCompositePaintable = undefined,
    cost: ?*String = null,

    fn initFields(this: *Self) void {
        this.cost = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create1(upgradableRTSLayerHudPaintable: ?*UpgradableRTSLayerHudPaintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSLayerCompositePaintable, "create1", .{ upgradableRTSLayerHudPaintable }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(&self.base, "update", .{ rtsLayer });
        _ = Inheritance.call(self, "setCost", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(self, "getUpgradeCost").getUpgradeCost() }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ Inheritance.receiver(self, "getDownGradeCost").getDownGradeCost() }))) });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "drawString", .{ self.getCost(), Inheritance.fieldPointer(self, "upgradableRTSLayerHudPaintable").*.?.textX, Inheritance.fieldPointer(self, "upgradableRTSLayerHudPaintable").*.?.costY, 0 });
    }
    

    pub fn setCost(self: *Self, cost: ?*String) void {
        self.cost = cost;
    }
    

    pub fn getCost(self: *Self) ?*String {
        return self.cost;
    }
};

