// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const IndexedAnimation = @import("org/allbinary/animation/IndexedAnimation.zig").IndexedAnimation;
const RawKeyEventListener = @import("org/allbinary/game/input/event/RawKeyEventListener.zig").RawKeyEventListener;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const CustomTextBox = @import("org/allbinary/graphics/form/item/CustomTextBox.zig").CustomTextBox;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TextChangeListener = @import("org/allbinary/animation/text/TextChangeListener.zig").TextChangeListener;
const TextInterface = @import("org/allbinary/animation/text/TextInterface.zig").TextInterface;

pub const CustomTextBoxIndexedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.CustomTextBoxIndexedAnimation";
    pub const java_interfaces = .{ TextInterface };
    base: IndexedAnimation = undefined,
    customTextBox: ?*CustomTextBox = null,
    lastText: ?*String = null,
    hasChanged: bool = false,
    textChangeListener: ?*TextChangeListener = null,
    // Implements RawKeyEventListener
    // Implements UpdateMyFontInterface
    // Implements TextInterface

    fn initFields(this: *Self) void {
        
        this.lastText = Inheritance.upcast(?*String, StringUtil.getInstance().?.INIT_STRING);
        this.hasChanged = true;
        this.textChangeListener = Inheritance.upcast(?*TextChangeListener, TextChangeListener.getInstance());
    }
    

    pub fn create1(customTextBox: ?*CustomTextBox) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(IndexedAnimation, "create1", .{ AnimationBehavior.getInstance() }).*;
        this.initFields();
        this.customTextBox = customTextBox;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(Inheritance.receiver(self.customTextBox.?, "getTextFieldItem").getTextFieldItem().?, "setForegroundBasicColorP", .{ basicColor });
    }
    

    pub fn setBackgroundBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        _ = Inheritance.call(Inheritance.receiver(self.customTextBox.?, "getTextFieldItem").getTextFieldItem().?, "setBackgroundBasicColorP", .{ basicColor });
    }
    

    pub fn setTextWithOnMeasure(self: *Self, text: ?*String, textChangeListener: ?*TextChangeListener) void {
        _ = Inheritance.call(self, "setText", .{ text });
        self.textChangeListener = textChangeListener;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont()); _ = font;
        _ = self.textChangeListener.?.onMeasure();
        self.textChangeListener = Inheritance.upcast(@TypeOf(self.textChangeListener), TextChangeListener.getInstance());
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        if (!Object.same(self.lastText, text)) {
            self.hasChanged = true;
            self.lastText = text;
            _ = Inheritance.call(Inheritance.receiver(self.customTextBox.?, "getTextFieldItem").getTextFieldItem().?, "setString", .{ text });
        }
    }
    

    pub fn getText(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.receiver(self.customTextBox.?, "getTextFieldItem").getTextFieldItem().?, "getString").getString());
    }
    

    pub fn onEventRaw(self: *Self, keyCode: i32, deviceId: i32, repeated: bool) void {
        _ = Inheritance.call(self.customTextBox.?, "onEventRaw", .{ keyCode, deviceId, repeated });
    }
    

    pub fn getFontHeight(self: *Self) i32 {
        return Inheritance.receiverOf(Inheritance.receiver(self.customTextBox.?, "getTextFieldItem").getTextFieldItem().?, "getFontHeight").getFontHeight();
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.customTextBox.?, "paintXY", .{ graphics, x, y });
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = graphics;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
};

