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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const UpgradableRTSLayerHudPaintable = @import("org/allbinary/game/layer/UpgradableRTSLayerHudPaintable.zig").UpgradableRTSLayerHudPaintable;

pub const RTSLayerCompositePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerCompositePaintable";
    base: Paintable = undefined,
    upgradeCost: ?*String = null,
    downGradeCost: ?*String = null,
    UPGRADE: ?*String = null,
    DOWNGRADE: ?*String = null,
    upgradableRTSLayerHudPaintable: ?*UpgradableRTSLayerHudPaintable = null,

    fn initFields(this: *Self) void {
        this.upgradeCost = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.downGradeCost = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.UPGRADE = String.literal("Up: $");
        this.DOWNGRADE = String.literal("Down: $-");
        
    }
    

    pub fn create1(upgradableRTSLayerHudPaintable: ?*UpgradableRTSLayerHudPaintable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.upgradableRTSLayerHudPaintable = upgradableRTSLayerHudPaintable;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self, rtsLayer: ?*RTSLayer) void {
        if (Inheritance.receiver(rtsLayer.?, "isUpgradeable").isUpgradeable()) {
            _ = Inheritance.call(self, "setUpgradeCost", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.UPGRADE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(rtsLayer.?, "getUpgradeCost").getUpgradeCost())) }))) });
        } else {
            _ = Inheritance.call(self, "setUpgradeCost", .{ StringUtil.getInstance().?.EMPTY_STRING });
        }
        if (Inheritance.receiver(rtsLayer.?, "isDowngradeable").isDowngradeable()) {
            _ = Inheritance.call(self, "setDownGradeCost", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.DOWNGRADE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(rtsLayer.?, "getDowngradeCost").getDowngradeCost())) }))) });
        } else {
            _ = Inheritance.call(self, "setDownGradeCost", .{ StringUtil.getInstance().?.EMPTY_STRING });
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "drawString", .{ self.getDownGradeCost(), self.upgradableRTSLayerHudPaintable.?.textX, self.upgradableRTSLayerHudPaintable.?.costY1, 0 });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.getUpgradeCost(), self.upgradableRTSLayerHudPaintable.?.textX, self.upgradableRTSLayerHudPaintable.?.costY, 0 });
    }
    

    pub fn setUpgradeCost(self: *Self, upgradeCost: ?*String) void {
        self.upgradeCost = upgradeCost;
    }
    

    pub fn getUpgradeCost(self: *Self) ?*String {
        return self.upgradeCost;
    }
    

    pub fn setDownGradeCost(self: *Self, downGradeCost: ?*String) void {
        self.downGradeCost = downGradeCost;
    }
    

    pub fn getDownGradeCost(self: *Self) ?*String {
        return self.downGradeCost;
    }
};

