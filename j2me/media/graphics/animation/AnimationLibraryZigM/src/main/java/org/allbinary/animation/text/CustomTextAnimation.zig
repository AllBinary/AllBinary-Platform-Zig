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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const FontDebugFactory = @import("org/allbinary/graphics/font/FontDebugFactory.zig").FontDebugFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TextAnimation = @import("org/allbinary/animation/text/TextAnimation.zig").TextAnimation;
const TextInterface = @import("org/allbinary/animation/text/TextInterface.zig").TextInterface;

pub const CustomTextAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.CustomTextAnimation";
    pub const java_interfaces = .{ TextInterface };
    base: TextAnimation = undefined,
    fontDebugFactory: ?*FontDebugFactory = null,
    fontSize: i32 = 0,
    font: ?*Font = null,
    lastText: ?*String = null,
    hasChanged: bool = false,
    textWidth: i32 = 0,
    // Implements TextInterface

    fn initFields(this: *Self) void {
        this.fontDebugFactory = Inheritance.upcast(?*FontDebugFactory, FontDebugFactory.getInstance());
        
        
        this.lastText = Inheritance.upcast(?*String, StringUtil.getInstance().?.INIT_STRING);
        this.hasChanged = true;
        this.textWidth = 0;
    }
    

    pub fn create3(text: ?*String, fontSize: i32, animationBehavior: ?*AnimationBehavior) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TextAnimation, "create2", .{ text, animationBehavior }).*;
        this.initFields();
        this.fontSize = fontSize;
        this.font = Inheritance.upcast(@TypeOf(this.font), Inheritance.callStatic(Font, "getFont", .{ Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "myFontProcessor").*.?, "process", .{ graphics });
        const existingFont: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(self.fontDebugFactory.?, "setFont", .{ self.font, graphics });
        _ = Inheritance.call(&self.base, "paintXYNoUpdate", .{ graphics, x, y });
        _ = Inheritance.call(self.fontDebugFactory.?, "setFont", .{ existingFont, graphics });
    }
    

    pub fn setScale(self: *Self, scaleX: f32, scaleY: f32) void {
        if (scaleX != scaleY) {
            std.debug.panic("{any}", .{error.RuntimeException});
        }
        self.hasChanged = true;
        self.font = Inheritance.upcast(@TypeOf(self.font), Inheritance.callStatic(Font, "getFont", .{ Font.FACE_SYSTEM, Font.STYLE_PLAIN, @as(i32, @intFromFloat((@as(f32, @floatFromInt(self.fontSize)) * scaleX))) }));
    }
    

    pub fn setText(self: *Self, text: ?*String) void {
        if (!Object.same(self.lastText, text)) {
            self.hasChanged = true;
            self.lastText = text;
            _ = Inheritance.call(&self.base, "setText", .{ text });
        }
    }
    

    pub fn getText(self: *Self) ?*String {
        return self.lastText;
    }
    

    pub fn getWidth(self: *Self) i32 {
        if (self.hasChanged) {
            self.textWidth = Inheritance.call(self.font.?, "stringWidth", .{ Inheritance.fieldPointer(self, "textArrayP").*[@intCast(0)] });
            self.hasChanged = false;
        }
        return self.textWidth;
    }
    

    pub fn getFontHeight(self: *Self) i32 {
        return self.font.?.getHeight();
    }
};

