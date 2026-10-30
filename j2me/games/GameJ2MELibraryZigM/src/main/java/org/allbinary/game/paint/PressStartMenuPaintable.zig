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
const AppletUtil = @import("org/allbinary/AppletUtil.zig").AppletUtil;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const TouchScreenFactory = @import("org/allbinary/input/motion/button/TouchScreenFactory.zig").TouchScreenFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;

pub const PressStartMenuPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.PressStartMenuPaintable";
    base: Paintable = undefined,
    displayInfo: ?*DisplayInfoSingleton = null,
    PRESS_START: ?*String = null,
    KEY_START: ?*String = null,
    MENU_START: ?*String = null,
    myFontProcessor: ?*MyFontProcessor = null,
    startString: ?*String = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    flash: bool = false,
    anchor: i32 = 0,
    beginWidth: i32 = 0,
    line: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.PRESS_START = String.literal("Press Screen To Start");
        this.KEY_START = String.literal("Press or Click F2 To Begin");
        this.MENU_START = String.literal("Press Start From The Menu To Begin");
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.startString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1100 });
        this.flash = false;
        this.anchor = Anchor.TOP_LEFT;
        this.beginWidth = 0;
        this.line = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        this.initFields();
        if (Inheritance.receiverOf(TouchScreenFactory.getInstance().?, "isTouch").isTouch()) {
            this.startString = this.PRESS_START;
        } else if (Inheritance.callStatic(AppletUtil, "isAppletLoader", .{ this })) {
            this.startString = this.KEY_START;
        } else {
            this.startString = this.MENU_START;
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.beginWidth = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.startString }) >> @intCast(1));
        self.line = (4 * Inheritance.callStatic(MyFontProcessor, "defaultCharWidth", .{ font })) + (font.?.getHeight() >> @intCast(1));
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (self.timeDelayHelper.?.isTimeTNT()) {
            if (self.isFlash()) {
                _ = Inheritance.call(self, "setFlash", .{ false });
            } else {
                _ = Inheritance.call(self, "setFlash", .{ true });
            }
        }
        if (self.isFlash()) {
            _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
            _ = Inheritance.call(graphics.?, "drawString", .{ self.startString, self.displayInfo.?.getLastHalfWidth() - self.beginWidth, self.displayInfo.?.getLastHeight() - self.line, self.anchor });
        }
    }
    

    pub fn setFlash(self: *Self, flash: bool) void {
        self.flash = flash;
    }
    

    pub fn isFlash(self: *Self) bool {
        return self.flash;
    }
};

