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
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const CharArrayFactory = @import("org/allbinary/logic/java/character/CharArrayFactory.zig").CharArrayFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerCompositePaintable = @import("org/allbinary/game/layer/RTSLayerCompositePaintable.zig").RTSLayerCompositePaintable;
const SelectionHudPaintable = @import("org/allbinary/game/layer/SelectionHudPaintable.zig").SelectionHudPaintable;
const UpgradableWideRTSLayerPaintable = @import("org/allbinary/game/layer/UpgradableWideRTSLayerPaintable.zig").UpgradableWideRTSLayerPaintable;

pub const UpgradableRTSLayerHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.UpgradableRTSLayerHudPaintable";
    base: SelectionHudPaintable = undefined,
    PERCENT: ?*String = null,
    rtsLayer: ?*CollidableDestroyableDamageableLayer = null,
    costY: i32 = 0,
    costY1: i32 = 0,
    percentCompleteX2: i32 = 0,
    rtsLayerCompositePaintableLateInit: ?*RTSLayerCompositePaintable = null,
    charHeight: i32 = 0,
    charWidth: i32 = 0,
    percentComplete: i32 = 0,
    percentCompleteX: i32 = 0,
    percentCompleteArray: []u16 = &.{},
    currentTotalDigits: i32 = 0,
    var instance: ?*UpgradableRTSLayerHudPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UpgradableRTSLayerHudPaintable.create();
    }

    fn initFields(this: *Self) void {
        this.PERCENT = String.literal("%");
        this.rtsLayer = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        this.costY = 0;
        this.costY1 = 0;
        this.percentCompleteX2 = 0;
        this.rtsLayerCompositePaintableLateInit = null;
        this.charHeight = 0;
        this.charWidth = 0;
        this.percentComplete = 0;
        this.percentCompleteX = 0;
        this.percentCompleteArray = Inheritance.receiverOf(CharArrayFactory.getInstance().?, "getZeroCharArray").getZeroCharArray();
        this.currentTotalDigits = 0;
    }
    

    pub fn getInstance() ?*UpgradableRTSLayerHudPaintable {
        return Inheritance.upcast(?*UpgradableRTSLayerHudPaintable, UpgradableRTSLayerHudPaintable.instance);
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
        self.charHeight = font.?.getHeight();
        self.charWidth = Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font });
    }
    

    pub fn update(self: *Self) void {
        _ = self.base.update();
        const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
        self.costY = (Inheritance.fieldPointer(self, "y").* + commonButtons.?.STANDARD_BUTTON_SIZE);
        self.costY1 = (Inheritance.fieldPointer(self, "y").* + commonButtons.?.STANDARD_BUTTON_SIZE - self.charHeight);
        self.percentCompleteX2 = Inheritance.fieldPointer(self, "imageX").* + commonButtons.?.STANDARD_BUTTON_SIZE - self.charWidth;
        const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (displayInfoSingleton.?.getLastWidth() > 320) {
            self.rtsLayerCompositePaintableLateInit = Inheritance.upcast(@TypeOf(self.rtsLayerCompositePaintableLateInit), Inheritance.callStatic(UpgradableWideRTSLayerPaintable, "create1", .{ self }));
        } else {
            self.rtsLayerCompositePaintableLateInit = Inheritance.callStatic(RTSLayerCompositePaintable, "create1", .{ self });
        }
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, self.getRtsLayer());
        _ = Inheritance.call(self.rtsLayerCompositePaintableLateInit.?, "update", .{ rtsLayer });
        _ = Inheritance.call(self, "setAnimationInterface", .{ Inheritance.receiver(rtsLayer.?, "getVerticleBuildAnimationInterface").getVerticleBuildAnimationInterface() });
        _ = Inheritance.call(self, "setName", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() });
    }
    

    pub fn updateInfo(self: *Self) void {
        const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, self.getRtsLayer());
        self.percentComplete = Inheritance.receiver(rtsLayer.?, "getPercentComplete").getPercentComplete();
        if (self.percentComplete < 10) {
            self.percentCompleteX = 32;
        } else if (self.percentComplete < 100) {
            self.percentCompleteX = 24;
        } else {
            self.percentCompleteX = 16;
        }
        self.percentCompleteArray = Inheritance.upcast(@TypeOf(self.percentCompleteArray), Inheritance.call(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCharArray", .{ self.percentComplete }));
        self.currentTotalDigits = Inheritance.receiverOf(Inheritance.receiver(self, "getPrimitiveLongUtil").getPrimitiveLongUtil().?, "getCurrentTotalDigits").getCurrentTotalDigits();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(self.rtsLayerCompositePaintableLateInit.?, "paint", .{ graphics });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.percentCompleteArray, 0, self.currentTotalDigits, Inheritance.fieldPointer(self, "imageX").* + self.percentCompleteX, self.costY, 0 });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.PERCENT, self.percentCompleteX2, self.costY, 0 });
        _ = Inheritance.call(Inheritance.receiver(self, "getAnimationInterface").getAnimationInterface().?, "paintXY", .{ graphics, Inheritance.fieldPointer(self, "imageX").*, Inheritance.fieldPointer(self, "y").* });
    }
    

    pub fn setRtsLayer(self: *Self, rtsLayer: ?*RTSLayer) void {
        self.rtsLayer = rtsLayer;
    }
    

    pub fn getRtsLayer(self: *Self) ?*CollidableDestroyableDamageableLayer {
        return self.rtsLayer;
    }
};

