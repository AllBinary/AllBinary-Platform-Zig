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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;

pub const RTSLayerHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerHudPaintable";
    base: SelectionHudPaintable = undefined,
    weaponProperties: []?*String = &.{},
    rtsLayer: ?*CollidableDestroyableDamageableLayer = null,
    costY: i32 = 0,
    costY1: i32 = 0,
    fontHeight: i32 = 0,
    // Implements UpdateMyFontInterface
    var instance: ?*RTSLayerHudPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RTSLayerHudPaintable.create();
    }

    fn initFields(this: *Self) void {
        this.weaponProperties = Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
        this.rtsLayer = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        this.costY = 0;
        this.costY1 = 0;
        this.fontHeight = 0;
    }
    

    pub fn getInstance() ?*RTSLayerHudPaintable {
        return Inheritance.upcast(?*RTSLayerHudPaintable, RTSLayerHudPaintable.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SelectionHudPaintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "updateMeasurement", .{ graphics });
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.costY1 = (Inheritance.fieldPointer(self, "y").* + ((@as(i32, @intCast(self.weaponProperties.len)) + 1) * self.fontHeight));
        if (!AndroidUtil.isAndroid()) {
            self.costY = self.costY1;
        } else {
            self.costY = (Inheritance.fieldPointer(self, "y").* + ((@as(i32, @intCast(self.weaponProperties.len)) + 2) * self.fontHeight));
        }
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        _ = Inheritance.call(self, "setName", .{ Inheritance.receiverOf(self.getRtsLayer().?, "getName").getName() });
        const partInterface: ?*BasicWeaponPart = Inheritance.cast(?*BasicWeaponPart, Inheritance.receiverOf(self.getRtsLayer().?, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(0)]);
        self.weaponProperties = Inheritance.upcast(@TypeOf(self.weaponProperties), Inheritance.receiverOf(partInterface.?.getWeaponProperties().?, "toStringArray").toStringArray());
        Inheritance.fieldPointer(self, "myFontProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "myFontProcessor").*), Inheritance.fieldPointer(self, "updateMyFontProcessor").*);
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        const size: i32 = @as(i32, @intCast(self.weaponProperties.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(graphics.?, "drawString", .{ self.weaponProperties[@intCast(index)], Inheritance.fieldPointer(self, "textX").*, Inheritance.fieldPointer(self, "y").* + ((index + 1) * self.fontHeight), 0 });
            }
        }
    }
    

    pub fn setRtsLayer(self: *Self, rtsLayer: ?*RTSLayer) void {
        self.rtsLayer = rtsLayer;
    }
    

    pub fn getRtsLayer(self: *Self) ?*CollidableDestroyableDamageableLayer {
        return self.rtsLayer;
    }
};

