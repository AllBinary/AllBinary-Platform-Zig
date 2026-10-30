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
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;
const CommonButtons = @import("org/allbinary/input/motion/button/CommonButtons.zig").CommonButtons;
const TouchButtonLocationHelper = @import("org/allbinary/input/motion/button/TouchButtonLocationHelper.zig").TouchButtonLocationHelper;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;

pub const SelectionHudPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.SelectionHudPaintable";
    base: InitUpdatePaintable = undefined,
    y: i32 = 0,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    x: i32 = 0,
    textX: i32 = 0,
    imageX: i32 = 0,
    basicColor: ?*BasicColor = null,
    color: i32 = 0,
    width: i32 = 0,
    height: i32 = 0,
    name: ?*String = null,
    animationInterface: ?*Animation = null,
    backgroundColor: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.y = CommonButtons.getInstance().?.STANDARD_BUTTON_SIZE + 17;
        
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.x = 0;
        this.textX = 0;
        this.imageX = 0;
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
        this.color = 0;
        this.width = 0;
        this.height = 0;
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.animationInterface = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        this.backgroundColor = Inheritance.receiverOf(BasicColorFactory.getInstance().?.GREY.?, "intValue").intValue();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        this.initFields();
        _ = this.update();
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 10000 }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(self, "setHeight", .{ commonButtons.?.STANDARD_BUTTON_SIZE + font.?.getHeight() });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn update(self: *Self) void {
        const commonButtons: ?*CommonButtons = Inheritance.upcast(?*CommonButtons, CommonButtons.getInstance());
        const touchButtonLocationHelper: ?*TouchButtonLocationHelper = TouchButtonLocationHelper.create();
        const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        self.x = commonButtons.?.STANDARD_BUTTON_SIZE + touchButtonLocationHelper.?.getColumnsRemainderHalf();
        self.textX = self.getX() + 4;
        self.width = displayInfoSingleton.?.getLastWidth() - self.getX() * 2;
        self.imageX = self.getWidth() + touchButtonLocationHelper.?.getColumnsRemainderHalf() - 10;
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn updateSelectionInfo(self: *Self) void {
        _ = self;
    }
    

    pub fn updateInfo(self: *Self) void {
        _ = self;
    }
    

    pub fn getPrimitiveLongUtil(self: *Self) ?*PrimitiveLongUtil {
        return self.primitiveLongUtil;
    }
    

    pub fn setAnimationInterface(self: *Self, animationInterface: ?*Animation) void {
        self.animationInterface = animationInterface;
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
        _ = Inheritance.call(self, "setColor", .{ basicColor.?.intValue() });
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setColor(self: *Self, color: i32) void {
        self.color = color;
    }
    

    pub fn getColor(self: *Self) i32 {
        return self.color;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return self.width;
    }
    

    pub fn setHeight(self: *Self, height: i32) void {
        self.height = height;
    }
    

    pub fn getHeight(self: *Self) i32 {
        return self.height;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.x;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.backgroundColor });
        _ = Inheritance.call(graphics.?, "drawRect", .{ self.getX(), self.y, self.getWidth(), self.getHeight() });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.getColor() });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.getName(), self.textX, self.y, 0 });
    }
};

