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
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;

//SwtToJ2ME
pub const FullScreenPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.FullScreenPaintable";
    base: Paintable = undefined,
    displayInfo: ?*DisplayInfoSingleton = null,
    myFontProcessor: ?*MyFontProcessor = null,
    FULLSCREEN_TEXT: ?*String = null,
    anchor: i32 = 0,
    Y: i32 = 0,
    beginWidth: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.FULLSCREEN_TEXT = String.literal("F11 - Toggle Fullscreen");
        this.anchor = Anchor.TOP_LEFT;
        this.Y = 0;
        this.beginWidth = 0;
    }
    

    pub fn getInstance() ?*FullScreenPaintable {
        return FullScreenPaintable.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.Y = 4 * font.?.getHeight();
        self.beginWidth = (Inheritance.call(font.?, "stringWidth", .{ self.FULLSCREEN_TEXT }) >> @intCast(1));
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const halfWidth: i32 = self.displayInfo.?.getLastHalfWidth();
        const height: i32 = self.displayInfo.?.getLastHeight();
        _ = Inheritance.call(graphics.?, "drawString", .{ self.FULLSCREEN_TEXT, halfWidth - self.beginWidth, height - self.Y, self.anchor });
    }
};

