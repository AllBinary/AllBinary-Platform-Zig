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
// package org.allbinary.game.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;

//J2SEForJ2ME
pub const AboutPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.AboutPaintable";
    base: Paintable = undefined,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    ABOUT: ?*String = null,
    info: []?*String = &.{},
    developers: []?*String = &.{},
    paintableArray: []?*Paintable = &.{},
    myFontProcessor: ?*MyFontProcessor = null,
    charHeight: i32 = 0,
    aboutBeginWidth: i32 = 0,
    infoBeginWidth: []i32 = &.{},
    developersBeginWidth: []i32 = &.{},
    anchor: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.ABOUT = Inheritance.upcast(?*String, CanvasStrings.getInstance().?.ABOUT);
        
        
        this.paintableArray = @constCast(&[_]?*Paintable{ this })[0..];
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.charHeight = 0;
        this.aboutBeginWidth = 0;
        
        
        this.anchor = Anchor.TOP_LEFT;
    }
    

    pub fn getInstance(info: []?*String, developers: []?*String) ?*AboutPaintable {
        return Inheritance.callStatic(AboutPaintable, "create2", .{ info, developers });
    }
    

    pub fn create2(info: []?*String, developers: []?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        this.info = info;
        this.infoBeginWidth = Inheritance.upcast(@TypeOf(this.infoBeginWidth), array_N66473: { const array_N66473_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(this.info.len)))) catch unreachable; @memset(array_N66473_array, 0); break :array_N66473 array_N66473_array; });
        this.developers = developers;
        this.developersBeginWidth = Inheritance.upcast(@TypeOf(this.developersBeginWidth), array_N66555: { const array_N66555_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(this.developers.len)))) catch unreachable; @memset(array_N66555_array, 0); break :array_N66555 array_N66555_array; });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.charHeight = font.?.getHeight();
        self.aboutBeginWidth = (Inheritance.call(font.?, "stringWidth", .{ self.ABOUT }) >> @intCast(1));
        const infoSize: i32 = @as(i32, @intCast(self.info.len));
        {
            var index: i32 = 0;
            while (index < infoSize) : (index += 1) {
            self.infoBeginWidth[@intCast(index)] = (Inheritance.call(font.?, "stringWidth", .{ self.info[@intCast(index)] }) >> @intCast(1));
            }
        }
        const size: i32 = @as(i32, @intCast(self.developers.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            self.developersBeginWidth[@intCast(index)] = (Inheritance.call(font.?, "stringWidth", .{ self.developers[@intCast(index)] }) >> @intCast(1));
            }
        }
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn getPaintableArrayInstance(self: *Self) []?*Paintable {
        return self.paintableArray;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const halfWidth: i32 = self.displayInfoSingleton.?.getLastHalfWidth();
        _ = Inheritance.call(graphics.?, "drawString", .{ self.ABOUT, halfWidth - self.aboutBeginWidth, 2 * self.charHeight, self.anchor });
        const infoSize: i32 = @as(i32, @intCast(self.info.len));
        {
            var index: i32 = 0;
            while (index < infoSize) : (index += 1) {
            _ = Inheritance.call(graphics.?, "drawString", .{ self.info[@intCast(index)], halfWidth - self.infoBeginWidth[@intCast(index)], (4 + index) * self.charHeight, self.anchor });
            }
        }
        const size: i32 = @as(i32, @intCast(self.developers.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(graphics.?, "drawString", .{ self.developers[@intCast(index)], halfWidth - self.developersBeginWidth[@intCast(index)], (5 + infoSize + index) * self.charHeight, self.anchor });
            }
        }
    }
};

