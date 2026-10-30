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
// package org.allbinary.game.graphics.hud

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const HudGraphicsPosition = @import("org/allbinary/game/graphics/hud/HudGraphicsPosition.zig").HudGraphicsPosition;

pub const BasicHud_1 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.graphics.hud.BasicHud_1";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    canvasStrings: ?*CanvasStrings = null,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    displayInfo: ?*DisplayInfoSingleton = null,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    location: i32 = 0,
    direction: i32 = 0,
    bufferZone: i32 = 0,
    hudGraphicsPosition: ?*HudGraphicsPosition = null,
    x: i32 = 0,
    y: i32 = 0,
    basicColor: ?*BasicColor = null,
    color: i32 = 0,
    updateMaxWidth: i32 = 0,
    updateMaxHeight: i32 = 0,
    offsetY: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.location = 0;
        this.direction = 0;
        this.bufferZone = 0;
        this.hudGraphicsPosition = Inheritance.upcast(?*HudGraphicsPosition, HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION);
        this.x = 0;
        this.y = 0;
        this.basicColor = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLACK);
        
        this.updateMaxWidth = 0;
        this.updateMaxHeight = 0;
        this.offsetY = 0;
    }
    

    pub fn create4(location: i32, direction: i32, bufferZone: i32, basicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setLocation", .{ location });
        _ = Inheritance.call(this, "setDirection", .{ direction });
        _ = Inheritance.call(this, "setBufferZone", .{ bufferZone });
        _ = Inheritance.call(this, "onDisplayChangeEvent", .{ DisplayInfoSingleton.getInstance().?.displayChangeEvent });
        _ = Inheritance.call(this, "setBasicColorP", .{ basicColor });
        this.color = basicColor.?.intValue();
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        { // try
            self.hudGraphicsPosition = Inheritance.upcast(@TypeOf(self.hudGraphicsPosition), Inheritance.call(self, "getHudGraphicsPositionWH", .{ self.displayInfo.?.getLastWidth(), self.displayInfo.?.getLastHeight(), self.updateMaxWidth, self.updateMaxHeight }));
            self.x = Inheritance.receiverOf(self.hudGraphicsPosition.?.getPoint().?, "getX").getX();
            _ = Inheritance.call(self, "setY", .{ Inheritance.receiverOf(self.hudGraphicsPosition.?.getPoint().?, "getY").getY() });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, self.canvasStrings.?.ON_DISPLAY_CHANGE_EVENT, e });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn getLocation(self: *Self) i32 {
        return self.location;
    }
    

    pub fn getDirection(self: *Self) i32 {
        return self.direction;
    }
    

    // throws Exception
    pub fn getHudGraphicsPositionWH(self: *Self, width: i32, height: i32, maxWidth: i32, maxHeight: i32) ?*HudGraphicsPosition {
        var x: i32 = 0;
        var y: i32 = 0;
        var anchor: i32 = 0;
        const basicHudFactory: ?*BasicHudFactory = Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.getInstance());
        if (basicHudFactory.?.BOTTOMLEFT == self.getLocation()) {
            x = self.bufferZone + 2;
            y = height - maxHeight - self.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.LEFT;
        } else if (basicHudFactory.?.BOTTOMRIGHT == self.getLocation()) {
            x = width - maxWidth;
            y = height - maxHeight - self.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.RIGHT;
        } else if (basicHudFactory.?.TOPLEFT == self.getLocation()) {
            x = self.bufferZone + 2;
            y = self.bufferZone + 5;
            anchor = Anchor.TOP_LEFT;
        } else if (basicHudFactory.?.TOPRIGHT == self.getLocation()) {
            x = width - maxWidth;
            y = self.bufferZone + 5;
            anchor = Graphics.TOP & Graphics.RIGHT;
        } else if (basicHudFactory.?.TOPCENTER == self.getLocation()) {
            x = (@divTrunc((width - maxWidth), 2));
            y = self.bufferZone + 5;
            anchor = Graphics.TOP & Graphics.HCENTER;
        } else if (basicHudFactory.?.BOTTOMCENTER == self.getLocation()) {
            x = (@divTrunc((width - maxWidth), 2));
            y = height - maxHeight - self.bufferZone;
            anchor = Graphics.BOTTOM & Graphics.HCENTER;
        } else if (basicHudFactory.?.ABSOLUTE == self.getLocation()) {
            x = maxHeight;
            y = maxWidth;
            anchor = 0;
        }
        return Inheritance.callStatic(HudGraphicsPosition, "create2", .{ Inheritance.call(self, "getPoint", .{ x, y }), anchor });
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn getPoint(self: *Self, x: i32, y: i32) ?*GPoint {
        return Inheritance.upcast(?*GPoint, Inheritance.call(PointFactory.getInstance().?, "createXY", .{ x, y }));
    }
    

    pub fn getBufferZone(self: *Self) i32 {
        return self.bufferZone;
    }
    

    pub fn setBufferZone(self: *Self, bufferZone: i32) void {
        self.bufferZone = bufferZone;
    }
    

    pub fn setLocation(self: *Self, location: i32) void {
        self.location = location;
    }
    

    pub fn setDirection(self: *Self, direction: i32) void {
        self.direction = direction;
    }
    

    pub fn getHudGraphicsPosition(self: *Self) ?*HudGraphicsPosition {
        return self.hudGraphicsPosition;
    }
    

    pub fn getColor(self: *Self) i32 {
        return self.color;
    }
    

    pub fn getX(self: *Self) i32 {
        return self.x;
    }
    

    pub fn setX(self: *Self, x: i32) void {
        self.x = x;
    }
    

    pub fn setBasicColorP(self: *Self, basicColor: ?*BasicColor) void {
        self.basicColor = basicColor;
    }
    

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.basicColor;
    }
    

    pub fn setY(self: *Self, y: i32) void {
        self.y = y;
    }
    

    pub fn getY(self: *Self) i32 {
        return self.y;
    }
    

    pub fn paintSSO(self: *Self, graphics: ?*Graphics, string: ?*String, string2: ?*String, offset: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.getBasicColorP() });
        _ = Inheritance.call(graphics.?, "drawString", .{ string, self.x, self.getY(), self.hudGraphicsPosition.?.getAnchor() });
        _ = Inheritance.call(graphics.?, "drawString", .{ string2, self.x + offset, self.getY(), self.hudGraphicsPosition.?.getAnchor() });
    }
    

    pub fn paintSSOO(self: *Self, graphics: ?*Graphics, string: ?*String, string2: ?*String, offset: i32, offset2: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(graphics.?, "setColor", .{ self.getColor() });
        _ = Inheritance.call(graphics.?, "drawString", .{ string, self.x + offset, self.getY(), self.hudGraphicsPosition.?.getAnchor() });
        _ = Inheritance.call(graphics.?, "drawString", .{ string2, self.x + offset2, self.getY(), self.hudGraphicsPosition.?.getAnchor() });
    }
    

    pub fn paintDXY(self: *Self, graphics: ?*Graphics, charArray: []u16, offset: i32, len: i32, charArray2: []u16, offset2: i32, len2: i32, xOffset: i32, xOffset2: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.getBasicColorP() });
        const y: i32 = self.getY();
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, offset, len, self.x + xOffset, y, self.hudGraphicsPosition.?.getAnchor() });
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray2, offset2, len2, self.x + xOffset2, y, self.hudGraphicsPosition.?.getAnchor() });
    }
    

    pub fn paintDX(self: *Self, graphics: ?*Graphics, charArray: []u16, offset: i32, len: i32, charArray2: []u16, offset2: i32, len2: i32, xOffset: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.getBasicColorP() });
        const y: i32 = self.getY();
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, offset, len, self.x, y, self.hudGraphicsPosition.?.getAnchor() });
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray2, offset2, len2, self.x + xOffset, y, self.hudGraphicsPosition.?.getAnchor() });
    }
    

    pub fn paintOffsetAndLength(self: *Self, graphics: ?*Graphics, charArray: []u16, offset: i32, len: i32) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.getBasicColorP() });
        const y: i32 = self.getY();
        _ = Inheritance.call(graphics.?, "drawChars", .{ charArray, offset, len, self.x, y, self.hudGraphicsPosition.?.getAnchor() });
    }
    

    pub fn paintString(self: *Self, graphics: ?*Graphics, string: ?*String) void {
        _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
        _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, self.getBasicColorP() });
        const y: i32 = self.getY() + self.offsetY;
        _ = Inheritance.call(graphics.?, "drawString", .{ string, self.x, y, self.hudGraphicsPosition.?.getAnchor() });
    }
};

