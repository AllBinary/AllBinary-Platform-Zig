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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const ABCustomImageItem = @import("org/allbinary/graphics/form/item/ABCustomImageItem.zig").ABCustomImageItem;
const CharArrayFactory = @import("org/allbinary/logic/java/character/CharArrayFactory.zig").CharArrayFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;
const RTSInterface = @import("org/allbinary/game/layer/RTSInterface.zig").RTSInterface;

pub const TechnologyRTSInterfaceImageItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.TechnologyRTSInterfaceImageItem";
    base: ABCustomImageItem = undefined,
    rtsInterface: ?*RTSInterface = null,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    LEVEL: ?*String = null,
    COST: ?*String = null,
    DOLLAR: ?*String = null,
    myFontProcessor: ?*MyFontProcessor = null,
    costString: []u16 = &.{},
    costLength: i32 = 0,
    levelString: []u16 = &.{},
    levelLength: i32 = 0,
    adjustedCostLabelY: i32 = 0,
    adjustedCostX: i32 = 0,
    adjustedCostY: i32 = 0,
    adjustedLevelX: i32 = 0,
    adjustedLevelY: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        
        this.primitiveLongUtil = Inheritance.upcast(?*PrimitiveLongUtil, Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 10000 }));
        this.LEVEL = String.literal("Level");
        this.COST = String.literal("Cost");
        this.DOLLAR = String.literal("$");
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.costString = Inheritance.receiverOf(CharArrayFactory.getInstance().?, "getZeroCharArray").getZeroCharArray();
        this.costLength = 0;
        this.levelString = Inheritance.receiverOf(CharArrayFactory.getInstance().?, "getZeroCharArray").getZeroCharArray();
        this.levelLength = 0;
        this.adjustedCostLabelY = 0;
        this.adjustedCostX = 0;
        this.adjustedCostY = 0;
        this.adjustedLevelX = 0;
        this.adjustedLevelY = 0;
    }
    

    pub fn create6(label: ?*String, img: ?*Image, layout: i32, altText: ?*String, basicColor: ?*BasicColor, rtsInterface: ?*RTSInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomImageItem, "create6", .{ label, img, layout, altText, basicColor, 0 }).*;
        this.initFields();
        this.rtsInterface = rtsInterface;
        _ = this.update();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        const fontHeight: i32 = font.?.getHeight();
        var imageHeight: i32 = 0;
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.receiver(self, "getImage").getImage());
        if (!Object.same(image, NullImage.NULL_IMAGE)) {
            imageHeight = image.?.getHeight();
        }
        self.adjustedCostLabelY = -Inheritance.fieldPointer(self, "yOffset").* + imageHeight - (3 * fontHeight);
        self.adjustedCostY = -Inheritance.fieldPointer(self, "yOffset").* + imageHeight - (2 * fontHeight);
        self.adjustedCostX = 2 + (self.DOLLAR.?.length() * (fontHeight - 1));
        self.adjustedLevelY = -Inheritance.fieldPointer(self, "yOffset").* + imageHeight - fontHeight;
        self.adjustedLevelX = 2 + (self.LEVEL.?.length() * (fontHeight - 1));
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn getRtsInterface(self: *Self) ?*RTSInterface {
        return self.rtsInterface;
    }
    

    pub fn update(self: *Self) void {
        self.costString = Inheritance.upcast(@TypeOf(self.costString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ Inheritance.receiverOf(self.getRtsInterface().?, "getUpgradeCost").getUpgradeCost() }));
        self.levelString = Inheritance.upcast(@TypeOf(self.levelString), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ Inheritance.receiverOf(self.getRtsInterface().?, "getLevel").getLevel() }));
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x, y });
        const xa: i32 = x + 2;
        _ = Inheritance.call(graphics.?, "drawString", .{ self.COST, xa, y + self.adjustedCostLabelY, 0 });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.DOLLAR, xa, y + self.adjustedCostY, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.costString, 0, self.costLength, x + self.adjustedCostX, y + self.adjustedCostY, 0 });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.LEVEL, xa, y + self.adjustedLevelY, 0 });
        _ = Inheritance.call(graphics.?, "drawChars", .{ self.levelString, 0, self.levelLength, x + self.adjustedLevelX, y + self.adjustedLevelY, 0 });
    }
};

