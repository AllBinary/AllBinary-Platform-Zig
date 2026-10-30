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
// package org.allbinary.game.displayable.canvas

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
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const FontDebugFactory = @import("org/allbinary/graphics/font/FontDebugFactory.zig").FontDebugFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const StartIntermissionPaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.StartIntermissionPaintable";
    base: InitUpdatePaintable = undefined,
    fontDebugFactory: ?*FontDebugFactory = null,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    stringArray: []?*String = &.{},
    fontSize: i32 = 0,
    font: ?*Font = null,
    lastWidth: []i32 = &.{},
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    basicColor: ?*BasicColor = null,
    color: i32 = 0,
    lineYOffsetArray: []i32 = &.{},
    hasChanged: bool = false,
    anchor: i32 = 0,
    fontHeightP: i32 = 0,
    BEGIN_LEVEL: ?*String = null,
    EMPTY_STRING: ?*String = null,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.fontDebugFactory = Inheritance.upcast(?*FontDebugFactory, FontDebugFactory.getInstance());
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        
        
        
        
        
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
        
        this.lineYOffsetArray = NullUtil.getInstance().?.NULL_INT_ARRAY;
        this.hasChanged = true;
        this.anchor = Anchor.TOP_LEFT;
        this.fontHeightP = 0;
        this.BEGIN_LEVEL = String.literal("Begin Level ");
        this.EMPTY_STRING = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create4(gameCanvas: ?*AllBinaryGameCanvas, stringArray: []?*String, basicColor: ?*BasicColor, font: ?*Font) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        this.initFields();
        this.gameCanvas = gameCanvas;
        this.stringArray = stringArray;
        this.lastWidth = Inheritance.upcast(@TypeOf(this.lastWidth), array_N66724: { const array_N66724_array = allocator.alloc(i32, @intCast(@as(i32, @intCast(this.stringArray.len)))) catch unreachable; @memset(array_N66724_array, 0); break :array_N66724 array_N66724_array; });
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        this.color = basicColor.?.intValue();
        this.fontSize = font.?.getSize();
        this.font = font;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeightP = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        const existingFont: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        _ = Inheritance.call(self.fontDebugFactory.?, "setFont", .{ self.font, graphics });
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP3", .{ graphics, self.basicColor, self.color });
        var beginWidth: i32 = 0;
        {
            var index: i32 = @as(i32, @intCast(self.lineYOffsetArray.len)) - 1;
            while (index >= 0) : (index -= 1) {
            if (self.hasChanged) {
                self.lastWidth[@intCast(index)] = (Inheritance.call(graphics.?.getFont().?, "stringWidth", .{ self.stringArray[@intCast(index)] }) >> @intCast(1));
            }
            beginWidth = self.lastWidth[@intCast(index)];
            _ = Inheritance.call(graphics.?, "drawString", .{ self.stringArray[@intCast(index)], displayInfo.?.getLastHalfWidth() - beginWidth, displayInfo.?.getLastHalfHeight() - self.lineYOffsetArray[@intCast(index)], self.anchor });
            }
        }
        self.hasChanged = false;
        _ = Inheritance.call(self.fontDebugFactory.?, "setFont", .{ existingFont, graphics });
    }
    

    pub fn update(self: *Self) void {
        const level: i32 = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager().?, "getGameInfo").getGameInfo().?, "getCurrentLevel").getCurrentLevel();
        self.stringArray[@intCast(0)] = Inheritance.upcast(@TypeOf(self.stringArray[@intCast(0)]), Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.BEGIN_LEVEL }).?, "appendint", .{ level }))));
        {
            var index: i32 = @as(i32, @intCast(self.stringArray.len)) - 1;
            while (index >= 1) : (index -= 1) {
            self.stringArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.stringArray[@intCast(index)]), self.EMPTY_STRING);
            }
        }
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
};

