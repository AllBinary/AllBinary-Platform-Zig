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
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;

pub const RTSLayerTextAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.item.RTSLayerTextAnimation";
    base: Animation = undefined,
    image: ?*Image = null,
    text: ?*String = null,
    myFontProcessor: ?*MyFontProcessor = null,
    fontHeight: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        
        
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.fontHeight = 0;
    }
    

    pub fn create2(text: ?*String, image: ?*Image) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Animation.create().*;
        this.initFields();
        this.text = text;
        this.image = image;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(&self.base, "paintXY", .{ graphics, x, y });
        const adjustedCostY: i32 = self.image.?.getHeight() - self.fontHeight;
        _ = Inheritance.call(graphics.?, "drawString", .{ self.text, x, y + adjustedCostY, 0 });
    }
};

