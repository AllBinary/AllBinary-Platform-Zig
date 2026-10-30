//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
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
// package org.allbinary.graphics.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;

pub const SimpleTextPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.SimpleTextPaintable";
    base: Paintable = undefined,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    text: ?*String = null,
    basicColor: ?*BasicColor = null,
    topScoresWidth: i32 = 0,
    fontHeight: i32 = 0,
    anchor: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        
        
        this.topScoresWidth = 0;
        this.fontHeight = 0;
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn create2(text: ?*String, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.text = text;
        this.basicColor = basicColor;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.topScoresWidth = (Inheritance.call(font.?, "stringWidth", .{ self.text }) >> @intCast(1));
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const width: i32 = self.displayInfoSingleton.?.getLast()[@intCast(self.displayInfoSingleton.?.WIDTH)];
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(self.getBasicColorP().?, "intValue").intValue() });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.text, (width >> @intCast(1)) - self.topScoresWidth, self.fontHeight, self.anchor });
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        self.text = text;
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn getText(self: *Self) ?*String {
        return self.text;
    }
};

