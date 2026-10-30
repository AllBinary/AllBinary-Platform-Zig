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
// package org.allbinary.game.paint.help

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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const HelpPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.help.HelpPaintable";
    base: Paintable = undefined,
    displayInfo: ?*DisplayInfoSingleton = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    anchor: i32 = 0,
    title: ?*String = null,
    inputInfo: []?*String = &.{},
    basicColor: ?*BasicColor = null,
    titleBeginWidth: i32 = 0,
    beginWidthArray: []i32 = &.{},
    charHeight: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.anchor = Anchor.TOP_LEFT;
        
        this.inputInfo = Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
        
        this.titleBeginWidth = 0;
        this.beginWidthArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
        this.charHeight = 0;
    }
    

    pub fn create3(title: ?*String, backgroundBasicColor: ?*BasicColor, basicColor: ?*BasicColor) *Self {
        _ = backgroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.title = title;
        this.basicColor = basicColor;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.titleBeginWidth = (Inheritance.call(font.?, "stringWidth", .{ self.title }) >> @intCast(1));
        self.charHeight = font.?.getHeight();
        const size: i32 = @as(i32, @intCast(self.inputInfo.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            self.beginWidthArray[@intCast(index)] = (Inheritance.call(font.?, "stringWidth", .{ self.inputInfo[@intCast(index)] }) >> @intCast(1));
            }
        }
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn setInputInfoP(self: *Self, inputInfo: []?*String) void {
        self.inputInfo = inputInfo;
        self.beginWidthArray = Inheritance.upcast(@TypeOf(self.beginWidthArray), array_N67012: { const array_N67012_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(self.inputInfo.len)))) catch unreachable; @memset(array_N67012_array, 0); break :array_N67012 array_N67012_array; });
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const halfWidth: i32 = self.displayInfo.?.getLastHalfWidth();
        _ = Inheritance.call(graphics.?, "setColor", .{ self.basicColor.?.intValue() });
        _ = Inheritance.call(graphics.?, "drawString", .{ self.title, halfWidth - self.titleBeginWidth, self.charHeight, self.anchor });
        const size: i32 = @as(i32, @intCast(self.inputInfo.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(graphics.?, "drawString", .{ self.inputInfo[@intCast(index)], halfWidth - self.beginWidthArray[@intCast(index)], (index + 3) * self.charHeight, self.anchor });
            }
        }
    }
};

