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
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

//HTMLForJ2ME
pub const OwnershipPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.OwnershipPaintable";
    base: Paintable = undefined,
    displayInfo: ?*DisplayInfoSingleton = null,
    myFontProcessor: ?*MyFontProcessor = null,
    COPYRIGHT: ?*String = null,
    basicColor: ?*BasicColor = null,
    color: i32 = 0,
    anchor: i32 = 0,
    COPYRIGHT_Y: i32 = 0,
    beginWidth: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.COPYRIGHT = String.literal("AllBinary Copyright (c) 2011");
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.WHITE);
        this.color = this.basicColor.?.intValue();
        this.anchor = Anchor.TOP_LEFT;
        this.COPYRIGHT_Y = 0;
        this.beginWidth = 0;
    }
    

    pub fn getInstance() ?*OwnershipPaintable {
        return OwnershipPaintable.create();
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
        self.COPYRIGHT_Y = 2 * font.?.getHeight();
        self.beginWidth = (Inheritance.call(font.?, "stringWidth", .{ self.COPYRIGHT }) >> @intCast(1));
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
        self.color = basicColor.?.intValue();
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.color });
        const halfWidth: i32 = self.displayInfo.?.getLastHalfWidth();
        const height: i32 = self.displayInfo.?.getLastHeight();
        _ = Inheritance.call(graphics.?, "drawString", .{ self.COPYRIGHT, halfWidth - self.beginWidth, height - self.COPYRIGHT_Y, self.anchor });
    }
};

